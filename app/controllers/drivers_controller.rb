class DriversController < ApplicationController
  

  def index
    @drivers = Driver.all
    render json: @drivers
  end

  def show
    @driver = Driver.find(params[:id])
    render json: @driver, include: :trips
  end

  def create
    @driver = Driver.create(driver_params)
    render json: @driver
  end

  private
  def driver_params
    params.require(:driver).permit!
  end

end
