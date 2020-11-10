module WindDirection
  def wind_direction(data)
    degrees = data.to_f
    value = ((degrees/22.5) + 0.5)
    directions = ["N","NNE","NE","ENE","E","ESE", "SE", "SSE","S","SSW","SW","WSW","W","WNW","NW","NNW"]
    directions[(value % 16)]
  end
end
