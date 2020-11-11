require 'rails_helper'

describe 'Climbing Routes' do
  it 'can retrieve the forecast for a location and nearby climing routes with the distance to each trail' do
    request_params = {
      location: 'erwin, tn'
    }

    get '/api/v1/climbing_routes', params: request_params

    expect(response).to be_successful
    routes_response = JSON.parse(response.body, symbolize_names: true)

    expect(routes_response).to have_key(:data)
    expect(routes_response[:data]).to be_a(Hash)

    data = routes_response[:data]
    expect(data).to have_key(:id)
    expect(data[:id]).to eq(nil)

    expect(data).to have_key(:type)
    expect(data[:type]).to eq('climbing_routes')

    expect(data).to have_key(:attributes)
    expect(data[:attributes]).to be_a(Hash)

    attributes = data[:attributes]
    expect(attributes).to have_key(:location)
    expect(attributes[:location]).to be_a(String)

    expect(attributes).to have_key(:forecast)
    expect(attributes[:forecast]).to be_a(Hash)

    forecast = attributes[:forecast]
    expect(forecast).to have_key(:summary)
    expect(forecast[:summary]).to be_a(String)

    expect(forecast).to have_key(:temperature)
    expect(forecast[:temperature]).to be_a(Integer).or be_a(Float)

    expect(attributes).to have_key(:routes)
    expect(attributes[:routes]).to be_an(Array)

    route = attributes[:routes][0]
    expect(route).to be_a(Hash)

    expect(route).to have_key(:name)
    expect(route[:name]).to be_a(String)

    expect(route).to have_key(:type)
    expect(route[:type]).to be_a(String)

    expect(route).to have_key(:rating)
    expect(route[:rating]).to be_a(String)

    expect(route).to have_key(:location)
    expect(route[:location]).to be_a(Array)

    expect(route).to have_key(:distance_to_route)
    expect(route[:distance_to_route]).to be_a(String).or be_a(Float)
  end
end
