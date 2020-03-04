class DriversController < ApplicationController
  

  def index
    drivers = Driver.all
    (params[:filter] != 'undefined') && drivers = filter_drivers(drivers, params[:filter])
    (params[:from] != 'undefined' && params[:to] != 'undefined') && drivers = available_drivers(drivers, params[:from], params[:to])
    render json: drivers, status: 200
  end

  def show
    @driver = Driver.find(params[:id])
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
