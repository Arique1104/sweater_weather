require 'rails_helper'
describe 'Image for City' do
  it 'can get appropriate image for city' do
    request_params = {
      location: 'denver,co'
    }
    get "/api/v1/backgrounds", params: request_params


    expect(response).to be_successful
    image = JSON.parse(response.body, symbolize_names: true)

    expect(image).to have_key(:data)
    expect(image[:data]).to be_a(Hash)

    data = image[:data]
    expect(data).to have_key(:id)
    expect(data[:id]).to eq(nil)

    expect(data).to have_key(:type)
    expect(data[:type]).to eq('image')

    expect(data).to have_key(:attributes)
    expect(data[:attributes]).to be_a(Hash)

    attributes = data[:attributes]
    #FIGURE OUT HOW TO GET RID OF THIS!
    expect(attributes).to have_key(:image_url)
    expect(attributes[:image_url]).to be_a(String)

    expect(attributes).to have_key(:location)
    expect(attributes[:location]).to be_a(String)

    expect(attributes).to have_key(:credit)
    expect(attributes[:credit]).to be_a(Hash)

    credit = attributes[:credit]
    expect(credit).to have_key(:source)
    expect(credit[:source]).to be_a(String)

    expect(credit).to have_key(:author)
    expect(credit[:author]).to be_a(String)

    expect(credit).to have_key(:logo)
    expect(credit[:logo]).to be_a(String)
  end
end
