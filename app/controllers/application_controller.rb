class ApplicationController < ActionController::API

  def not_found
    render json: { error: 'not_found' }
  end

  def authorize_request
    header = request.headers['Authorization']
    header = header.split(' ').last if header
    begin
      @decoded = JsonWebToken.decode(header)
      @current_user = User.find(@decoded[:user_id])
    rescue ActiveRecord::RecordNotFound => e
      render json: { errors: e.message }, status: :unauthorized
    rescue JWT::DecodeError => e
      render json: { errors: e.message }, status: :unauthorized
    end
  end

  def available_drivers(drivers, starts, ends)
      busy_drivers = Trip.filtered_trips(starts, ends).map {|trip| trip.driver_id}
      p busy_drivers
      return drivers.select {|driver| !busy_drivers.include?(driver.id)}
  end
end

