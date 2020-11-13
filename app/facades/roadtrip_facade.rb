class RoadtripFacade

  def self.create(origin, destination)
    @origin = origin
    @destination = destination
    @map_response = find_distance
    configure_response
    set_roadtrip
  end

  def self.find_distance
    MapService.find_destination_time(@origin, @destination)
  end

  def self.set_roadtrip
    Roadtrip.new(@origin, @destination, @travel_time, @weather_at_eta)
  end

  def self.configure_response
    if @map_response[:info][:statuscode] == 0
      find_travel_time
      find_weather_conditions
    else
      @travel_time = 'impossible route'
      @weather_at_eta = ""
    end
  end

  def self.find_travel_time
    @travel_time = @map_response[:route][:formattedTime]
  end

  def self.find_weather_conditions
    forecast = find_forecast_destination
    hours_needed = calculate_time
    hourly_weather = Forecast.new(forecast, hours_needed).hourly_weather
    hourly_weather.unshift("place_holder")
    found_forecast = hourly_weather[hours_needed.ceil]
    format_weather(found_forecast)
  end

  def self.find_forecast_destination
    ForecastService.find_forecast(format_lat_long)
  end

  def self.format_lat_long
    LongLat.new(lat_long_search)
  end

  def self.calculate_time
    seconds = @map_response[:route][:realTime]
    hours = ((seconds / 60) / 60)
  end

  def self.lat_long_search
    MapService.find_long_lat(@destination)
  end

  def self.format_weather(found_forecast)
    @weather_at_eta = {
      conditions: found_forecast.conditions,
      temperature: found_forecast.temp.to_i
    }
  end
end
