class ForecastFacade


  def self.find_forecast(location)
    map_response = MapService.find_long_lat(location)

    long_lat = LongLat.new(map_response)

    response = ForecastService.find_forecast(long_lat)
    Forecast.new(response)
  end

  def self.find_forecast_custom(location, units)
    map_response = MapService.find_long_lat(location)
    long_lat = LongLat.new(map_response)

    response = ForecastService.find_forecast_custom(long_lat, units)
    Forecast.new(response)
  end

end
