class CuratedRoute
 attr_reader  :name,
              :type,
              :rating,
              :location,
              :distance_to_route
  def initialize(route, initial_location)
    @name = route[:name]
    @type = route[:type]
    @rating = route[:rating]
    @location = route[:location]
    @distance_to_route = find_distance(route[:latitude], route[:longitude], initial_location)
  end

  def find_distance(lat, long, initial_location)
    latlng = "#{lat},#{long}"
    distance_response = MapService.find_distance(latlng, initial_location)
    distance_response[:distance][1]
  end

end
