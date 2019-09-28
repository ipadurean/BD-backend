class FlatRatesController < ApplicationController
  
  def index
    @flat_rates = FlatRate.all
    render json: @flat_rates
  end

  
  
end
