class Api::V1::MunchiesController < ApplicationController

  def on_arrival
    
    require "pry"; binding.pry



  end

  private

  def strong_params
    params.permit(:start, :end, :food)

  end

end
