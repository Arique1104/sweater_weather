class ClimbingRoutes
 attr_reader  :id,
              :location,
              :forecast,
              :routes
  def initialize(location, current_weather, curated_routes)
    @location = location
    @forecast = {
      summary: current_weather.conditions,
      temperature: current_weather.temperature
    }
    @routes = curated_routes
  end

end
