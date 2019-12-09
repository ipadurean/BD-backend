class TripsController < ApplicationController

  def index
    @trips = Trip.all
    render json: @trips, status: 200
  end

  def show
    @trip = Trip.find(params[:id])
  end

  def create
   @trip = Trip.create(trip_params)
    render json: @trip
  end

  def update
    @trip = Trip.find(params[:id])
    @trip.update(trip_params)
    render json: @trip, status: 200
  end

  def destroy
    @trip.destroy
  end

  

  private

      def trip_params
        params.require(:trip).permit!
      end

end
