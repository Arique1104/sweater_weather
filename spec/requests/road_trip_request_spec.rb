require 'rails_helper'

describe 'Road Trip' do
  it 'can plan a road trip' do
    User.create!(email: 'wow@example.com', password: 'roadtrip', api_key: "jgn983hy48thw9begh98h4539h4")

    request_params = {
      origin: "Denver,CO",
      destination: "Pueblo,CO",
      api_key: "jgn983hy48thw9begh98h4539h4"
    }

    headers = {
      'CONTENT_TYPE': 'application/json',
      'ACCEPT': 'application/json'
    }

    post '/api/v1/road_trip', headers: headers, params: JSON.generate(request_params)

    expect(response).to be_successful
    expect(response.status).to eq(200)

    road_trip = JSON.parse(response.body, symbolize_names: true)
    expect(road_trip).to be_a(Hash)
    expect(road_trip).to have_key(:data)
    expect(road_trip[:data]).to be_a(Hash)

    data = road_trip[:data]
    expect(data).to have_key(:type)
    expect(data[:type]).to eq("roadtrip")

    expect(data).to have_key(:id)
    expect(data[:id]).to eq(nil)


    expect(data).to have_key(:attributes)
    expect(data[:attributes]).to be_a(Hash)

    attributes = data[:attributes]
    expect(attributes).to have_key(:start_city)
    expect(attributes[:start_city]).to be_a(String)

    expect(attributes).to have_key(:end_city)
    expect(attributes[:end_city]).to be_a(String)

    expect(attributes).to have_key(:travel_time)
    expect(attributes[:travel_time]).to be_a(String)

    expect(attributes).to have_key(:weather_at_eta)
    expect(attributes[:weather_at_eta]).to be_a(Hash)

    weather = attributes[:weather_at_eta]
    expect(weather).to have_key(:temperature)
    expect(weather[:temperature]).to be_an(Integer).or be_a(Float)

    expect(weather).to have_key(:conditions)
    expect(weather[:conditions]).to be_a(String)

  end
  it 'can produce impossible route' do
      User.create!(email: 'wow@example.com', password: 'roadtrip', api_key: "jgn983hy48thw9begh98h4539h4")

      request_params = {
        origin: "Denver,CO",
        destination: "San Juan,PR",
        api_key: "jgn983hy48thw9begh98h4539h4"
      }

      headers = {
        'CONTENT_TYPE': 'application/json',
        'ACCEPT': 'application/json'
      }

      post '/api/v1/road_trip', headers: headers, params: JSON.generate(request_params)

      expect(response).to be_successful
      expect(response.status).to eq(200)

      road_trip = JSON.parse(response.body, symbolize_names: true)
      expect(road_trip).to be_a(Hash)
      expect(road_trip).to have_key(:data)
      expect(road_trip[:data]).to be_a(Hash)

      data = road_trip[:data]
      expect(data).to have_key(:type)
      expect(data[:type]).to eq("roadtrip")

      expect(data).to have_key(:id)
      expect(data[:id]).to eq(nil)

      expect(data).to have_key(:attributes)
      expect(data[:attributes]).to be_a(Hash)

      attributes = data[:attributes]
      expect(attributes).to have_key(:start_city)
      expect(attributes[:start_city]).to be_a(String)

      expect(attributes).to have_key(:end_city)
      expect(attributes[:end_city]).to be_a(String)

      expect(attributes).to have_key(:travel_time)
      expect(attributes[:travel_time]).to be_a(String)

      expect(attributes).to have_key(:weather_at_eta)
      expect(attributes[:weather_at_eta]).to be_empty

      weather = attributes[:weather_at_eta]
      expect(weather).to be_empty

  end

  it 'can return 401 if no api is given' do

    request_params = {
      origin: "Denver,CO",
      destination: "San Juan,PR",
    }

    headers = {
      'CONTENT_TYPE': 'application/json',
      'ACCEPT': 'application/json'
    }

    post '/api/v1/road_trip', headers: headers, params: JSON.generate(request_params)

    expect(response.status).to eq(401)
  end

  it 'can calculate weather 40 hours away' do
    User.create!(email: 'wow@example.com', password: 'roadtrip', api_key: "jgn983hy48thw9begh98h4539h4")

    request_params = {
      origin: "New York,NY",
      destination: "Los Angeles,CA",
      api_key: "jgn983hy48thw9begh98h4539h4"
    }

    headers = {
      'CONTENT_TYPE': 'application/json',
      'ACCEPT': 'application/json'
    }

    post '/api/v1/road_trip', headers: headers, params: JSON.generate(request_params)

    expect(response).to be_successful
    expect(response.status).to eq(200)

    road_trip = JSON.parse(response.body, symbolize_names: true)
    expect(road_trip).to be_a(Hash)
    expect(road_trip).to have_key(:data)
    expect(road_trip[:data]).to be_a(Hash)

    data = road_trip[:data]
    expect(data).to have_key(:type)
    expect(data[:type]).to eq("roadtrip")

    expect(data).to have_key(:id)
    expect(data[:id]).to eq(nil)


    expect(data).to have_key(:attributes)
    expect(data[:attributes]).to be_a(Hash)

    attributes = data[:attributes]
    expect(attributes).to have_key(:start_city)
    expect(attributes[:start_city]).to be_a(String)

    expect(attributes).to have_key(:end_city)
    expect(attributes[:end_city]).to be_a(String)

    expect(attributes).to have_key(:travel_time)
    expect(attributes[:travel_time]).to be_a(String)

    expect(attributes).to have_key(:weather_at_eta)
    expect(attributes[:weather_at_eta]).to be_a(Hash)

    weather = attributes[:weather_at_eta]
    expect(weather).to have_key(:temperature)
    expect(weather[:temperature]).to be_an(Integer).or be_a(Float)

    expect(weather).to have_key(:conditions)
    expect(weather[:conditions]).to be_a(String)
  end
end
