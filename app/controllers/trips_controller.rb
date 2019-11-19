class TripsController < ApplicationController

  def index
    @trips = Trip.all
    render json: @trips, status: 200
  end

  def create
   @trip = Trip.create(trip_params)
    render json: @trip
  end

  

  private

      def trip_params
        params.require(:trip).permit!
      end

end
