class MapService

  def self.find_long_lat(location)
    response = Faraday.get("http://www.mapquestapi.com/geocoding/v1/address") do |f|
      f.params[:key] = ENV['MAP_QUEST_KEY']
      f.params[:location] = "#{location}"
    end

    JSON.parse(response.body, symbolize_names: true)
  end

end

# class MapService
#
#   def self.conn
#     Faraday.new("http://www.mapquest.api.com")
#   end
#
#   def self.find_long_lat(location)
#     response = conn.get("/geocoding/v1/address") do |f|
#       f.params[:key] = ENV['MAP_QUEST_KEY']
#       f.params[:location] = location
#     end
#
#     JSON.parse(response.body, symbolize_names: true)
#   end
#
# end
