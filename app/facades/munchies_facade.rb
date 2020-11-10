class MunchiesFacade

  def self.find_restaurant(params)
    location = MapService.find_destination_time(params[:start], params[:end])
    dest_and_time = DestinationTime.new(location, params[:end])

    restaurant = MunchieService.find_restaurant(params[:end], params[:food])

    long_lat_response = MapService.find_long_lat(params[:end])

    long_lat = LongLat.new(long_lat_response)
    forecast = ForecastService.find_forecast(long_lat)

    Munchie.new(dest_and_time, restaurant, forecast)
  end

end
