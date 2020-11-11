class Api::V1::RoutesController < ApplicationController
  def index
    climbing_routes = RoutesFacade.find_routes(strong_params[:location])

    render json: ClimbingRoutesSerializer.new(climbing_routes)
  end

  private
  def strong_params
    params.permit(:location)
  end

end
