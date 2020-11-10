class HourlyWeather
  include TimeDate
  include WindDirection
 attr_reader  :time,
              :wind_speed,
              :direction,
              :conditions,
              :icon
  def initialize(data)
    @time = format_time(data[:dt])
    @wind_speed = "#{data[:wind_speed]} mph"
    @direction = wind_direction(data[:wind_deg])
    @conditions = data[:weather][0][:description]
    @icon = data[:weather][0][:icon]
  end

end
