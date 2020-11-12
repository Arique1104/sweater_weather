class RoadtripFacade
  def self.create(origin, destination)
    @origin = origin
    @destination = destination
    @distance = find_distance
    #------------------------------------ HOW FAR
    if @distance[:info][:statuscode] == 0
      travel_time = @distance[:route][:formattedTime]
      seconds = @distance[:route][:realTime]

      minutes = seconds / 60.0
      hours = ((seconds / 60) / 60)

      #------------------------------------ HOURLY WEATHER ARRAY FOR DESTINATION
      forecast = find_forecast_destination
      hours_needed = hours
      hourly_weather = Forecast.new(forecast, hours_needed).hourly_weather
      hourly_weather.unshift("place_holder")
      found_forecast = hourly_weather[hours.ceil]

      weather_at_eta = {
        conditions: found_forecast.conditions,
        temperature: found_forecast.temp.to_i
      }
    else
      travel_time = 'impossible route'
      weather_at_eta = ""
    end

    Roadtrip.new(origin, @destination, travel_time, weather_at_eta)
  end

  def self.find_distance
    MapService.find_destination_time(@origin, @destination)
  end

  def self.find_forecast_destination

    long_lat_response = MapService.find_long_lat(@destination)
    long_lat = LongLat.new(long_lat_response)
    forecast = ForecastService.find_forecast(long_lat)

  end

end
