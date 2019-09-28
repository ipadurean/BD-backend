require 'pry'

class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token
  def encode_token(user)
    JWT.encode({user_id: user[:user_id]}, 'panda', 'HS256')
  end

  def current_user
    @user ||= User.find_by(id: user_id)
  end

  def token
    request.headers['Authorization']
  end

  def decoded_token
    begin
      # [{user_id: 1}, {algo: 'hs256'}]
      JWT.decode(token, ENV['secret_key'], true, { :algorithm => 'HS256' })
    rescue JWT::DecodeError
      [{}]
    end
  end

  def user_id
    decoded_token.first['user_id']
  end

  def logged_in?
    !!current_user
  end

  def authorized
    render json: { message: "Please log in" }, status: :unauthorized unless logged_in?
  end
end

