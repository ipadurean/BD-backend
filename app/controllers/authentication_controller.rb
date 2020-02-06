
class AuthenticationController < ApplicationController
  before_action :authorize_request, except: :login



  # POST /auth/login
  def login
    @user = User.find_by_username(params[:username])
    if @user&.authenticate(params[:password])
      token = JsonWebToken.encode(user_id: @user.id)
      render json: { token: token, username: @user.username, id: @user.id, trips: user.trips }, status: :ok
    else
      render json: { error: 'unauthorized' }, status: :unauthorized
    end
  end

  
# GET /current_user
  def profile
    token =  request.headers[:Authorization].split(' ').last
    decoded_token = JsonWebToken.decode(token)
    p ".................authorizing............................"
    id = decoded_token['user_id']
    expire = decoded_token['exp']
    user = User.find(id)
    if user
      render json: { id: user.id, username: user.username, trips: user.trips, token: token, expire: expire }
    else
      render json: { error: 'Not Authorized'}, status: 401
    end
  end

  private

  def login_params
    params.permit(:username, :password)
  end

end