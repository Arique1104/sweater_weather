class Forecast
 attr_reader :current_weather,
             :daily_weather,
             :hourly_weather,
             :id

  def initialize(data, hours_needed = 7)
    @current_weather = current(data[:current])
    @daily_weather = daily(data[:daily])
    @hourly_weather = hourly(data[:hourly])[0..hours_needed]
  end



  def current(data)
    CurrentWeather.new(data)
  end

  def daily(data)
    results = []
    data.each do |d|
      results << DailyWeather.new(d)
    end
    results[0..4]
  end

  def hourly(data)
    results = []
    data.each do |d|
      results << HourlyWeather.new(d)
    end
    results
  end

end
