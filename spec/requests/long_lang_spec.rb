require 'rails_helper'

describe 'Weather for City' do
  it 'can get latitude and longitude' do

    request_params = {
      location: 'denver,co'
    }

    get '/api/v1/forecast'

    expect(response).to be_successful
    long_lang = JSON.parse(response.body, symbolize_names: true)[:data]

  end
end
