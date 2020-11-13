class RoadtripFacade

  def self.create(origin, destination)
    @origin = origin
    @destination = destination
    @distance = find_distance

    impossible_route?
    set_roadtrip
  end

  def self.set_roadtrip
    Roadtrip.new(@origin, @destination, @travel_time, @weather_at_eta)
  end

  def self.find_distance
    MapService.find_destination_time(@origin, @destination)
  end

  def self.impossible_route?
    if @distance[:info][:statuscode] == 0
      find_travel_time
    else
      @travel_time = 'impossible route'
      @weather_at_eta = ""
    end
  end

  def self.lat_long_search
    MapService.find_long_lat(@destination)
  end

  def self.format_lat_long
    LongLat.new(lat_long_search)
  end

  def self.find_forecast_destination
    ForecastService.find_forecast(format_lat_long)
  end

  def self.find_travel_time
    @travel_time = @distance[:route][:formattedTime]
    seconds = @distance[:route][:realTime]

    minutes = seconds / 60.0
    hours = ((seconds / 60) / 60)

    forecast = find_forecast_destination
    hours_needed = hours
    hourly_weather = Forecast.new(forecast, hours_needed).hourly_weather
    hourly_weather.unshift("place_holder")
    found_forecast = hourly_weather[hours.ceil]

    @weather_at_eta = {
      conditions: found_forecast.conditions,
      temperature: found_forecast.temp.to_i
    }
  end

end
