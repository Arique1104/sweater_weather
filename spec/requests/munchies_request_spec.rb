require 'rails_helper'
describe 'Munchies Request' do
  it 'can get munchies route' do
      # get route in mapquest
      request_params = {
        start: 'denver,co',
      end: 'pueblo,co',
      food: 'chinese'
        }
    get "/api/v1/munchies", params: request_params
    expect(response).to be_successful
    munchies = JSON.parse(response.body, symbolize_names: true)

    expect(munchies).to have_key(:data)
    expect(munchies[:data]).to be_a(Hash)

    attributes = munchies[:data][:attributes]
    expect(attributes).to have_key(:destination_city)
    expect(attributes[:destination_city]).to eq("Pueblo, CO")

    expect(attributes).to have_key(:travel_time)
    expect(attributes[:travel_time]).to eq("1 hours 43 min")

    expect(attributes).to have_key(:forecast)
    expect(attributes[:forecast]).to be_a(Hash)
    forecast = attributes[:forecast]
    expect(forecast).to have_key(:summary)
    expect(forecast[:summary]).to be_a(String)
    expect(forecast).to have_key(:temperature)
    expect(forecast[:temperature]).to be_a(Integer)

    expect(attributes).to have_key(:restaurant)
    expect(attributes[:restaurant]).to be_a(Hash)
    restaurant = attributes[:restaurant]
    expect(restaurant).to have_key(:name)
    expect(restaurant[:name]).to be_a(String)
    expect(restaurant).to have_key(:address)
    expect(restaurant[:address]).to be_a(String)


  end
end
