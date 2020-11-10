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
    expect(attributes[:destination_city]).to eq("Pueblo Co")

    expect(attributes).to have_key(:travel_time)
    expect(attributes[:travel_time]).to eq("1 hours 48 min")

    expect(attributes).to have_key(:travel_time)
    expect(attributes[:travel_time]).to eq("1 hours 48 min")

  end
end
