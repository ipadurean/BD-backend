class DriversController < ApplicationController
  

  def index
    drivers = Driver.all
    inexistent = [nil, 'undefined']
    !inexistent.include?(params[:filter]) && drivers = filter_drivers(drivers, params[:filter])
    !inexistent.include?(params[:from]) && !inexistent.include?(params[:to]) && drivers = available_drivers(drivers, params[:from], params[:to])
    render json: drivers, status: 200
  end

  def show
    @driver = Driver.find_by(name: params[:name])
    render json: @driver, include: :trips
  end

  def create
    @driver = Driver.create(driver_params)
    render json: @driver
  end

  def update
    @driver = Driver.find(params[:id])
    @driver.update(driver_params)
    render json: @driver
  end

  private
  
  def driver_params
    params.require(:driver).permit!
  end

end
