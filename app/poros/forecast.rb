class Forecast
 attr_reader :current_weather,
             :daily_weather,
             :hourly_weather,
             :id

  def initialize(data)
    @current_weather = current(data[:current])
    @daily_weather = daily(data[:daily])
    @hourly_weather = hourly(data[:hourly])
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
    results[0..7]
  end



end
