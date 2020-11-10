require 'rails_helper'

describe ForecastFacade do
  context 'class methods' do
    context 'find_forecast' do
      it 'returns a hash of weather information' do
        weather = ForecastFacade.find_forecast('denver,co')
        expect(weather.current_weather.class).to eq(CurrentWeather)
        expect(weather.daily_weather[0].class).to eq(DailyWeather)
        expect(weather.daily_weather.count).to eq(5)
        expect(weather.hourly_weather[0].class).to eq(HourlyWeather)
        expect(weather.hourly_weather.count).to eq(8)
      end
    end
  end
end
