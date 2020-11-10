class MunchieService
  def self.conn
    Faraday.new('https://api.yelp.com') do |conn|
      conn.authorization :Bearer, ENV.fetch('YELP_KEY')
    end

  end

  def self.find_restaurant(location, food)
    response = conn.get("/v3/businesses/search?term=#{food}&location=#{location}")
    JSON.parse(response.body, symbolize_names: true)
  end
end

#
# https://api.yelp.com/v3/businesses/search?term=chinese&location=pueblo,co
