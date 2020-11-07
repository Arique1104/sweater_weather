require 'rails_helper'

RSpec.describe '/authenticate', type: :request do
  it 'can authenticate' do

    headers = { 'CONTENT_TYPE' => 'application/json', 'Accept' => 'application/json'}

    new_user_params = {
      email: "whatever@example.com",
      password: "securepassword",
      password_confirmation: "securepassword"}

    post '/api/v1/users', headers: headers, params: new_user_params
require "pry"; binding.pry
    expect(response).to be_successful

  end
end


# curl -H
# "Content-Type: application/json" -X POST -d '{"email":"example@mail.com","password":"123123123"}' http://localhost:3000/authenticate
