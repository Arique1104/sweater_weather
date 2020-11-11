class RoutesFacade

  def self.find_routes(location)
#WHAT I NEED
# => forecast
    long_lat_response = MapService.find_long_lat(location)
    long_lat = LongLat.new(long_lat_response)

    forecast = ForecastService.find_forecast(long_lat)
    current_weather = CurrentWeather.new(forecast[:current])
# => routes
    routes = RoutesService.find_routes_by_long_lat(long_lat)

    route_ids = RouteIds.new(routes)

    final_routes = RoutesService.find_routes(route_ids)

#WHAT I ROUTES IT TO LOOK LIKE
    curated_routes = final_routes[:routes].map do |route|
      CuratedRoute.new(route, location)
    end
#WHAT I WANT RESPONSE TO LOOK LIKE
    ClimbingRoutes.new(location, current_weather, curated_routes)
  end

end
