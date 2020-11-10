class LongLat
 attr_reader :longitude,
 :latitude
  def initialize(data)
    @longitude = data[:results][0][:locations][0][:latLng][:lng]
    @latitude = data[:results][0][:locations][0][:latLng][:lat]
  end

end
