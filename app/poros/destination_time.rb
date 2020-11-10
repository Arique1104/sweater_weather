class DestinationTime
 attr_reader :destination_city,
             :travel_time,
             :min,
             :hour
  def initialize(data, destination)
    @destination_city = format_dest_city(destination)
    @travel_time = format_travel_time(data[:route][:formattedTime])
    @min = data[:route][:formattedTime][3..4].to_i
    @hour = data[:route][:formattedTime][0..1].to_i
  end

  def format_travel_time(info)
    integer_hour = info[0..1].to_i
    integer_min = info[3..4].to_i
    "#{integer_hour} hours #{integer_min} min"
  end

  def format_dest_city(info)
    state = info[-2..-1]
    city = info[0..-4]
    "#{city.capitalize}, #{state.upcase}"
  end

end
