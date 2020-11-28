class ForecastService

  def self.conn
    Faraday.new("http://api.openweathermap.org") do |f|
      f.params[:appid] = ENV['OPEN_WEATHER_KEY']
    end
  end

  def self.find_forecast(long_lat)
    response = conn.get("/data/2.5/onecall") do |f|
      f.params[:units] = "imperial"
      f.params[:lat] = long_lat.latitude
      f.params[:lon] = long_lat.longitude
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.find_forecast_custom(long_lat, units)
        response = conn.get("/data/2.5/onecall") do |f|
          f.params[:lat] = long_lat.latitude
          f.params[:lon] = long_lat.longitude
          f.params[:units] = units
        end
        JSON.parse(response.body, symbolize_names: true)
  end
end
