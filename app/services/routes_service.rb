class RoutesService
  def self.conn
    Faraday.new('https://www.mountainproject.com') do |f|
      f.params[:key] = ENV['MOUNTAIN_PROJECT_API_KEY']
    end
  end

  def self.find_routes(route_ids)
    response = conn.get('/data/get-routes') do |f|
      f.params[:routeIds] = route_ids.id_list
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.find_routes_by_long_lat(long_lat)
    response = conn.get('/data/get-routes-for-lat-lon') do |f|
      f.params[:lat] = long_lat.latitude
      f.params[:lon] = long_lat.longitude
      f.params[:maxResults] = 50
      f.params[:maxDistance] = 30
      f.params[:minDiff] = "5.6"
      f.params[:maxDiff] = "5.10a"
    end
    JSON.parse(response.body, symbolize_names: true)
  end

end
