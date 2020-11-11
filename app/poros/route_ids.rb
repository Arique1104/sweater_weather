class RouteIds
 attr_reader :id_list
  def initialize(routes)
    @id_list = get_routes_list(routes[:routes])
  end

  def get_routes_list(data)
    results = []
    data.each do |d|
      results << d[:id]
    end
    results.join(",")
  end

end
