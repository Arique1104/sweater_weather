 class Api::V1::WeatherController < ApplicationController

  def current
    if strong_params[:units]
      @results = ForecastFacade.find_forecast_custom(strong_params[:location], strong_params[:units])
    else
      @results = ForecastFacade.find_forecast(strong_params[:location])
    end
    render json: ForecastSerializer.new(@results)
  end

  def image
    @image = ImageFacade.find_image(strong_params[:location])
    render json: ImageSerializer.new(@image)
  end


private

  def strong_params
    params.permit(:location, :units)
  end
 end
