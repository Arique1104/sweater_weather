class Api::V1::RoadtripsController < ApplicationController
  def create
    user = User.find_by(api_key: strong_params[:api_key])
    if strong_params[:api_key] && user
      roadtrip = RoadtripFacade.create(strong_params[:origin], strong_params[:destination])
      render json: RoadtripSerializer.new(roadtrip)
    else
      render body: {}, status: 401
    end
  end

  private
  def strong_params
    params.permit(:origin, :destination, :api_key)
  end
end
