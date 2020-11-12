class RoadtripFacade
  def self.create(origin, destination)
    #------------------------------------ HOW FAR
    distance = MapService.find_destination_time(origin, destination)
    travel_time = distance[:route][:formattedTime]
    seconds = distance[:route][:realTime]
    minutes = seconds / 60
    hours = ((seconds.to_f / 60) / 60)

    #------------------------------------ HOURLY WEATHER ARRAY FOR DESTINATION
    long_lat_response = MapService.find_long_lat(destination)
    long_lat = LongLat.new(long_lat_response)
    forecast = ForecastService.find_forecast(long_lat)

    hourly_weather = Forecast.new(forecast).hourly_weather
    hourly_weather.unshift("place_holder")
    found_forecast = hourly_weather[hours.ceil]

    weather_at_eta = {
      conditions: found_forecast.conditions,
      temperature: found_forecast.temp.to_i
    }

    Roadtrip.new(origin, destination, travel_time, weather_at_eta)
  end

end
