require 'rails_helper'

describe 'Weather for City' do
  it 'can get latitude and longitude' do

    request_params = {
      location: 'denver,co'
    }

    get '/api/v1/forecast', params: request_params
    expect(response).to be_successful

    forecast = JSON.parse(response.body, symbolize_names: true)
    expect(forecast).to have_key(:data)
    expect(forecast[:data]).to be_a(Hash)
    expect(forecast[:data].count).to eq(3)

    current = forecast[:data][:attributes][:current_weather]
    expect(current).to have_key(:datetime)
    expect(current[:datetime]).to be_a(String)

    expect(current).to have_key(:sunrise)
    expect(current[:sunrise]).to be_a(String)

    expect(current).to have_key(:sunset)
    expect(current[:sunset]).to be_a(String)

    expect(current).to have_key(:temperature)
    expect(current[:temperature]).to be_a(Float).or be_an(Integer)

    expect(current).to have_key(:feels_like)
    expect(current[:feels_like]).to be_a(Float).or be_an(Integer)

    expect(current).to have_key(:humidity)
    expect(current[:humidity]).to be_a(Integer).or be_a(Float)

    expect(current).to have_key(:uvi)
    expect(current[:uvi]).to be_a(Integer).or be_a(Float)

    expect(current).to have_key(:visibility)
    expect(current[:visibility]).to be_a(Integer).or be_a(Float)

    expect(current).to have_key(:conditions)
    expect(current[:conditions]).to be_a(String)

    expect(current).to have_key(:icon)
    expect(current[:icon]).to be_a(String)


    hourly = forecast[:data][:attributes][:hourly_weather][0]
    expect(hourly).to have_key(:time)
    expect(hourly[:time]).to be_a(String)

    expect(hourly).to have_key(:wind_speed)
    expect(hourly[:wind_speed]).to be_a(String)

    expect(hourly).to have_key(:direction)
    expect(hourly[:direction]).to be_a(String)

    expect(hourly).to have_key(:conditions)
    expect(hourly[:conditions]).to be_a(String)

    expect(hourly).to have_key(:icon)
    expect(hourly[:icon]).to be_a(String)


    daily = forecast[:data][:attributes][:daily_weather][0]
    expect(daily).to have_key(:date)
    expect(daily[:date]).to be_a(String)

    expect(daily).to have_key(:sunrise)
    expect(daily[:sunrise]).to be_a(String)

    expect(daily).to have_key(:sunset)
    expect(daily[:sunset]).to be_a(String)

    expect(daily).to have_key(:max_temp)
    expect(daily[:max_temp]).to be_a(Integer).or be_a(Float)

    expect(daily).to have_key(:min_temp)
    expect(daily[:min_temp]).to be_a(Integer).or be_a(Float)

    expect(daily).to have_key(:conditions)
    expect(daily[:conditions]).to be_a(String)

    expect(daily).to have_key(:icon)
    expect(daily[:icon]).to be_a(String)
  end
  it 'can customize units to metric' do
    request_params = {
      location: 'denver,co',
      units: 'metric'
    }

    get '/api/v1/forecast', params: request_params
    expect(response).to be_successful

    forecast = JSON.parse(response.body, symbolize_names: true)
    expect(forecast).to have_key(:data)
    expect(forecast[:data]).to be_a(Hash)
    expect(forecast[:data].count).to eq(3)

    current = forecast[:data][:attributes][:current_weather]
    expect(current).to have_key(:datetime)
    expect(current[:datetime]).to be_a(String)

    expect(current).to have_key(:sunrise)
    expect(current[:sunrise]).to be_a(String)

    expect(current).to have_key(:sunset)
    expect(current[:sunset]).to be_a(String)

    expect(current).to have_key(:temperature)
    expect(current[:temperature]).to be_a(Float).or be_an(Integer)

    expect(current).to have_key(:feels_like)
    expect(current[:feels_like]).to be_a(Float).or be_an(Integer)

    expect(current).to have_key(:humidity)
    expect(current[:humidity]).to be_a(Integer).or be_a(Float)

    expect(current).to have_key(:uvi)
    expect(current[:uvi]).to be_a(Integer).or be_a(Float)

    expect(current).to have_key(:visibility)
    expect(current[:visibility]).to be_a(Integer).or be_a(Float)

    expect(current).to have_key(:conditions)
    expect(current[:conditions]).to be_a(String)

    expect(current).to have_key(:icon)
    expect(current[:icon]).to be_a(String)


    hourly = forecast[:data][:attributes][:hourly_weather][0]
    expect(hourly).to have_key(:time)
    expect(hourly[:time]).to be_a(String)

    expect(hourly).to have_key(:wind_speed)
    expect(hourly[:wind_speed]).to be_a(String)

    expect(hourly).to have_key(:direction)
    expect(hourly[:direction]).to be_a(String)

    expect(hourly).to have_key(:conditions)
    expect(hourly[:conditions]).to be_a(String)

    expect(hourly).to have_key(:icon)
    expect(hourly[:icon]).to be_a(String)


    daily = forecast[:data][:attributes][:daily_weather][0]
    expect(daily).to have_key(:date)
    expect(daily[:date]).to be_a(String)

    expect(daily).to have_key(:sunrise)
    expect(daily[:sunrise]).to be_a(String)

    expect(daily).to have_key(:sunset)
    expect(daily[:sunset]).to be_a(String)

    expect(daily).to have_key(:max_temp)
    expect(daily[:max_temp]).to be_a(Integer).or be_a(Float)

    expect(daily).to have_key(:min_temp)
    expect(daily[:min_temp]).to be_a(Integer).or be_a(Float)

    expect(daily).to have_key(:conditions)
    expect(daily[:conditions]).to be_a(String)

    expect(daily).to have_key(:icon)
    expect(daily[:icon]).to be_a(String)

  end
  it 'can customize units to imperial' do

    request_params = {
      location: 'denver,co',
      units: 'imperial'
    }
    get '/api/v1/forecast', params: request_params
    expect(response).to be_successful
    forecast = JSON.parse(response.body, symbolize_names: true)

    expect(forecast).to have_key(:data)
    expect(forecast[:data]).to be_a(Hash)
    expect(forecast[:data].count).to eq(3)

    current = forecast[:data][:attributes][:current_weather]
    expect(current).to have_key(:datetime)
    expect(current[:datetime]).to be_a(String)

    expect(current).to have_key(:sunrise)
    expect(current[:sunrise]).to be_a(String)

    expect(current).to have_key(:sunset)
    expect(current[:sunset]).to be_a(String)

    expect(current).to have_key(:temperature)
    expect(current[:temperature]).to be_a(Float).or be_an(Integer)

    expect(current).to have_key(:feels_like)
    expect(current[:feels_like]).to be_a(Float).or be_an(Integer)

    expect(current).to have_key(:humidity)
    expect(current[:humidity]).to be_a(Integer).or be_a(Float)

    expect(current).to have_key(:uvi)
    expect(current[:uvi]).to be_a(Integer).or be_a(Float)

    expect(current).to have_key(:visibility)
    expect(current[:visibility]).to be_a(Integer).or be_a(Float)

    expect(current).to have_key(:conditions)
    expect(current[:conditions]).to be_a(String)

    expect(current).to have_key(:icon)
    expect(current[:icon]).to be_a(String)


    hourly = forecast[:data][:attributes][:hourly_weather][0]
    expect(hourly).to have_key(:time)
    expect(hourly[:time]).to be_a(String)

    expect(hourly).to have_key(:wind_speed)
    expect(hourly[:wind_speed]).to be_a(String)

    expect(hourly).to have_key(:direction)
    expect(hourly[:direction]).to be_a(String)

    expect(hourly).to have_key(:conditions)
    expect(hourly[:conditions]).to be_a(String)

    expect(hourly).to have_key(:icon)
    expect(hourly[:icon]).to be_a(String)


    daily = forecast[:data][:attributes][:daily_weather][0]
    expect(daily).to have_key(:date)
    expect(daily[:date]).to be_a(String)

    expect(daily).to have_key(:sunrise)
    expect(daily[:sunrise]).to be_a(String)

    expect(daily).to have_key(:sunset)
    expect(daily[:sunset]).to be_a(String)

    expect(daily).to have_key(:max_temp)
    expect(daily[:max_temp]).to be_a(Integer).or be_a(Float)

    expect(daily).to have_key(:min_temp)
    expect(daily[:min_temp]).to be_a(Integer).or be_a(Float)

    expect(daily).to have_key(:conditions)
    expect(daily[:conditions]).to be_a(String)

    expect(daily).to have_key(:icon)
    expect(daily[:icon]).to be_a(String)

  end
end
