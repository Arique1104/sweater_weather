 class Api::V1::WeatherController < ApplicationController

  def current
    @results = ForecastFacade.find_forecast(strong_params[:location])
    render json: ForecastSerializer.new(@results)
  end

  def image
    @image = ImageFacade.find_image(strong_params[:location])
    render json: ImageSerializer.new(@image)
  end


private

  def strong_params
    params.permit(:location)
  end
 end
