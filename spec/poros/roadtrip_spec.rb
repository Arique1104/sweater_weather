require 'rails_helper'

RSpec.describe Roadtrip do
  it 'exists' do
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
end
