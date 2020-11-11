require 'rails_helper'

describe RoutesFacade do
  context 'class methods' do
    it 'find_routes(location)' do
      location = "erwin, tn"
      routes_response = RoutesFacade.find_routes(location)

      expect(routes_response.class).to eq(ClimbingRoutes)
      expect(routes_response.forecast).to be_a(Hash)

      expect(routes_response.forecast).to have_key(:summary)
      expect(routes_response.forecast[:summary]).to be_a(String)

      expect(routes_response.forecast).to have_key(:temperature)
      expect(routes_response.forecast[:temperature]).to be_a(Float).or be_an(Integer)

      expect(routes_response.location).to eq(location)

      expect(routes_response.routes).to be_an(Array)

      route = routes_response.routes[0]
      expect(route.distance_to_route).to be_a(Float).or be_an(Integer)

      expect(route.location).to be_an(Array)

      expect(route.name).to be_a(String)
      expect(route.rating).to be_a(String)
      expect(route.type).to be_a(String)

    end
  end
end
