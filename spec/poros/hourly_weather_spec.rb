require 'rails_helper'

RSpec.describe HourlyWeather do
  it 'exists' do
    data = {:dt=>1604973600,
           :temp=>27.75,
           :feels_like=>17.31,
           :pressure=>1011,
           :humidity=>92,
           :dew_point=>25.97,
           :clouds=>97,
           :visibility=>264,
           :wind_speed=>10.74,
           :wind_deg=>22,
           :weather=>
            [{:id=>804, :main=>"Clouds", :description=>"overcast clouds", :icon=>"04n"}],
           :pop=>0.79}
    hourly = HourlyWeather.new(data)
    expect(hourly.time).to eq("20:00:00")
    expect(hourly.wind_speed).to eq("10.74 mph")
    expect(hourly.direction).to eq("NNE")
    expect(hourly.conditions).to eq("overcast clouds")
    expect(hourly.icon).to eq("04n")
  end
end
