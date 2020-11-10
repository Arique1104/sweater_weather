class Munchie

 attr_reader :id,
            :destination_city,
            :travel_time,
            :forecast,
            :restaurant
  def initialize(dest_and_time, restaurant, forecast)
    @destination_city = dest_and_time.destination_city
    @travel_time = dest_and_time.travel_time
    @restaurant = format_restaurant(restaurant)
    @forecast = format_forecast(forecast, dest_and_time.hour, dest_and_time.min)
  end

  def format_restaurant(data)
    Restaurant.new(data)

  end

  def format_forecast(forecast, dest_hour, dest_min)
    total_hours = ((60 / dest_hour) + dest_min).ceil

    results = Forecast.new(forecast)
    found_forecast = results.hourly_weather[dest_hour]


    {
      summary: found_forecast.conditions,
      temperature: found_forecast.temp.to_i

    }
  end

end
