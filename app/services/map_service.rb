class MapService

  def self.conn
    Faraday.new("http://www.mapquestapi.com") do |f|
      f.params[:key] = ENV['MAP_QUEST_KEY']
    end
  end

  def self.find_long_lat(location)
    response = conn.get("/geocoding/v1/address") do |f|
      f.params[:location] = location
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.find_distance(latlng, initial_location)
    response = conn.get("/directions/v2/routematrix") do |f|
      f.params[:from] = initial_location
      f.params[:to] = latlng
    end
    JSON.parse(response.body, symbolize_names: true)
  end
end
