require 'rails_helper'

RSpec.describe DailyWeather do
  it 'exists' do
    data = {
         :dt=>1604944800,
         :sunrise=>1604929101,
         :sunset=>1604965761,
         :temp=>
          {:day=>39.47, :min=>27.73, :max=>45.77, :night=>30.58, :eve=>27.73, :morn=>39.15},
         :feels_like=>{:day=>33.31, :night=>22.93, :eve=>19.26, :morn=>28.06},
         :pressure=>1008,
         :humidity=>70,
         :dew_point=>27.07,
         :wind_speed=>4.21,
         :wind_deg=>63,
         :weather=>[{:id=>803, :main=>"Clouds", :description=>"broken clouds", :icon=>"04d"}],
         :clouds=>51,
         :pop=>0.87,
         :uvi=>2.41}
      daily = DailyWeather.new(data)

      expect(daily.date).to eq("2020-11-09")
      expect(daily.sunrise).to eq("2020-11-09 07:38:21 -0600")
      expect(daily.sunset).to eq("2020-11-09 17:49:21 -0600")
      expect(daily.max_temp).to eq(45.77)
      expect(daily.min_temp).to eq(27.73)
      expect(daily.conditions).to eq("broken clouds")
      expect(daily.icon).to eq("04d")

  end
end
