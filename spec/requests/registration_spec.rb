require 'rails_helper'
describe 'Registration' do
  it 'create a user' do
    request_params = {
      email: 'whatever@example.com',
      password: 'password',
      password_confirmation: 'password'
    }

    headers = {
      'CONTENT_TYPE': 'application/json',
      'ACCEPT': 'application/json'
    }

    post '/api/v1/users', headers: headers, params: JSON.generate(request_params)


    expect(response).to be_successful
    expect(response.status).to eq(201)
    user = JSON.parse(response.body, symbolize_names: true)

    expect(user).to be_a(Hash)
    expect(user).to have_key(:data)
    expect(user[:data]).to be_a(Hash)

    data = user[:data]
    expect(data).to have_key(:type)
    expect(data[:type]).to be_a(String)

    expect(data).to have_key(:id)
    expect(data[:id]).to be_a(String)

    expect(data).to have_key(:attributes)
    expect(data[:attributes]).to be_a(Hash)

    attributes = data[:attributes]
    expect(attributes).to have_key(:email)
    expect(attributes[:email]).to be_a(String)

    expect(attributes).to have_key(:api_key)
    expect(attributes[:api_key]).to be_a(String)
  end
  it 'can return an unsuccessful request' do
    request_params = {
      email: 'uh_hu@example.com'
    }

    headers = {
      'CONTENT_TYPE': 'application/json',
      'ACCEPT': 'application/json'
    }

    post '/api/v1/users', headers: headers, params: JSON.generate(request_params)
    expect(response.status).to eq(400)
  end
end
