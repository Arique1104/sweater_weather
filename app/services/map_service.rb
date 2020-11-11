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


end
