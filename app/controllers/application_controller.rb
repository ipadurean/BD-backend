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

  def filter_drivers(drivers, query)
    drivers.select do |driver|
      driver.name.downcase.include?(query) ||
      driver.username.downcase.include?(query) ||
      driver.car.downcase.include?(query)
    end
  end

  def available_drivers(drivers, starts, ends)
    busy_drivers = Trip.filtered_trips(starts, ends).map {|trip| trip.driver_id}
      return drivers.select {|driver| !busy_drivers.include?(driver.id)}
  end
end

