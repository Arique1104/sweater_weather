class ImageService
  def self.conn
    Faraday.new("https://api.pexels.com") do |conn|
      conn.headers[:authorization] = ENV.fetch('PEXEL_API')
    end
  end
  def self.find_image(city)
    response = conn.get('/v1/search') do |f|
      f.params[:query] = "City of #{city}"
    end
    JSON.parse(response.body, symbolize_names: true)
  end
end
