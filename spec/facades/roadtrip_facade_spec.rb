require 'rails_helper'

describe RoadtripFacade do
  context 'class methods' do
    it 'create(origin, destination)' do
      origin = "Chicago,IL"
      destination = "Moncure,NC"
      road_trip = RoadtripFacade.create(origin, destination)

      expect(road_trip.start_city).to eq(origin)

      expect(road_trip.end_city).to eq(destination)

      expect(road_trip.travel_time).to be_a(String)

      expect(road_trip.weather_at_eta).to be_a(Hash)

      expect(road_trip.weather_at_eta).to have_key(:conditions)
      expect(road_trip.weather_at_eta[:conditions]).to be_a(String)

      expect(road_trip.weather_at_eta).to have_key(:temperature)
      expect(road_trip.weather_at_eta[:temperature]).to be_a(Integer).or be_a(Float)

    end
    it 'find_distance' do
      origin = 'Denver,CO'
      destination = 'Pueblo,CO'
      map_service = MapService.find_destination_time(origin, destination)

      expect(map_service).to be_a(Hash)
      expect(map_service).to have_key(:route)
      expect(map_service[:route]).to be_a(Hash)
      route = map_service[:route]
      expect(route).to be_a(Hash)
      expect(route).to have_key(:formattedTime)
      expect(route[:formattedTime]).to be_a(String)

      expect(route).to have_key(:realTime)
      expect(route[:realTime]).to be_a(Integer)

      expect(route).to have_key(:distance)
      expect(route[:distance]).to be_a(Integer).or be_a(Float)

      expect(route).to have_key(:routeError)
      expect(route[:routeError]).to be_an(Hash)
    end

    it 'set_roadtrip' do
      origin = "Denver,CO"
      destination = "Pueblo,CO"
      travel_time = "01:43:57"
      weather_at_eta = {:conditions=>"clear sky", :temperature=>41}

      roadtrip = Roadtrip.new(origin, destination, travel_time, weather_at_eta)
      expect(roadtrip).to be_a(Roadtrip)
      expect(roadtrip.start_city).to eq(origin)
      expect(roadtrip.end_city).to eq(destination)
      expect(roadtrip.travel_time).to eq(travel_time)
      expect(roadtrip.weather_at_eta).to eq(weather_at_eta)
    end
    it 'configure_response, successful' do
      origin = "Denver,CO"
      destination = "Pueblo,CO"
      RoadtripFacade.create(origin, destination)
      truthy_response = RoadtripFacade.configure_response

      expect(truthy_response).to be_a(Hash)
      expect(truthy_response).to have_key(:conditions)
      expect(truthy_response[:conditions]).to be_a(String)
      expect(truthy_response).to have_key(:temperature)
      expect(truthy_response[:temperature]).to be_a(Integer)

    end
    it 'configure_response, impossible' do
      origin = "Denver,CO"
      destination = "London,UK"
      RoadtripFacade.create(origin, destination)
      impossible_route = RoadtripFacade.configure_response

      expect(impossible_route).to be_empty

    end
    it 'find_travel_time' do
      origin = "Denver,CO"
      destination = "Pueblo,CO"
      RoadtripFacade.create(origin, destination)
      distance = RoadtripFacade.find_travel_time

      expect(distance).to be_a(String)
    end
    it 'find_weather_conditions' do

    end
    it 'find_forecast_destination' do
    end
    it 'format_lat_long' do
    end
    it 'calculate_time' do
    end
    it 'format_weather' do
      origin = "Denver,CO"
      destination = "Pueblo,CO"
      RoadtripFacade.create(origin, destination)

      RoadtripFacade.lat_long_search

      RoadtripFacade.format_lat_long

      found_forecast = RoadtripFacade.find_weather_conditions

      result = RoadtripFacade.format_weather(found_forecast)
    end
    it 'lat_long_search' do
      origin = "Denver,CO"
      destination = "Pueblo,CO"
      RoadtripFacade.create(origin, destination)
      map_service = RoadtripFacade.lat_long_search

      expect(map_service).to be_a(Hash)
      expect(map_service).to have_key(:info)
      expect(map_service[:info]).to be_a(Hash)

      info = map_service[:info]
      expect(info).to have_key(:statuscode)
      expect(info[:statuscode]).to be_an(Integer)

      expect(info).to have_key(:copyright)
      expect(info[:copyright]).to be_an(Hash)

      options = map_service[:options]
      expect(options).to have_key(:maxResults)
      expect(options[:maxResults]).to be_an(Integer)

      expect(options).to have_key(:thumbMaps)
      expect(options[:thumbMaps]).to eq(true).or eq(false)

      result = map_service[:results][0]

      expect(result).to have_key(:providedLocation)
      expect(result[:providedLocation]).to be_a(Hash)

      expect(result).to have_key(:locations)
      expect(result[:locations]).to be_a(Array)
    end
  end
end
