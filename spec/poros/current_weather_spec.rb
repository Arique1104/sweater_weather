require 'rails_helper'

RSpec.describe CurrentWeather do
  it 'exists' do
    data = {
      :dt=>1604972240,
      :sunrise=>1604929101,
      :sunset=>1604965761,
      :temp=>27.63,
      :feels_like=>19.94,
      :pressure=>1012,
      :humidity=>92,
      :dew_point=>25.84,
      :uvi=>2.41,
      :clouds=>90,
      :visibility=>10000,
      :wind_speed=>5.82,
      :wind_deg=>70,
      :weather=>
       [{
        :id=>501,
        :main=>"Rain", :description=>"moderate rain", :icon=>"10n"},
       {
         :id=>601,
         :main=>"Snow",
         :description=>"snow",
         :icon=>"13n"}],
     :rain=>{:"1h"=>1.09},
     :snow=>{:"1h"=>1.0914}}




     current = CurrentWeather.new(data)
     expect(current.datetime).to eq("2020-11-09 19:37:20 -0600")
     expect(current.sunrise).to eq("2020-11-09 07:38:21 -0600")
     expect(current.sunset).to eq("2020-11-09 17:49:21 -0600")
     expect(current.temperature).to eq(27.63)
     expect(current.feels_like).to eq(19.94)
     expect(current.humidity).to eq(92)
     expect(current.uvi).to eq(2.41)
     expect(current.visibility).to eq(10000)
     expect(current.conditions).to eq('moderate rain')
     expect(current.icon).to eq('10n')
  end

  # it '#format_date_time' do
  #   time = 1604972240
  #   formatted_time = format_datetime(time)
  #   expect(formatted_time).to eq("sdfsdf")
  # end
end
