require 'date'
module TimeDate
  def format_datetime(data)
    Time.at(data).strftime('%Y-%m-%d %H:%M:%S %z')
  end

  def format_date(data)
    Time.at(data).strftime('%Y-%m-%d')
  end

  def format_time(data)
    Time.at(data).strftime('%H:%M:%S')
  end
end
