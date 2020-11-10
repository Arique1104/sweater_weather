class Api::V1::MunchiesController < ApplicationController

  def on_arrival
    @response = MunchiesFacade.find_restaurant(strong_params)


    render json: MunchieSerializer.new(@response)
  end

  private

  def strong_params
    params.permit(:start, :end, :food)

  end

end
