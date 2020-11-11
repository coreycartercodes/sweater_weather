require 'rails_helper'

describe 'Weather API' do
  it 'sends weather details', :vcr do


    get '/api/v1/forecast?location=denver,co'
    
    expect(response).to be_successful
    
    forecast = JSON.parse(response.body, symbolize_names: true)
    
    
    expect(forecast).to have_key(:data)
    expect(forecast[:data]).to be_a(Hash)
    expect(forecast[:data][:id]).to eq("null")
    expect(forecast[:data][:type]).to eq('forecast')
    expect(forecast[:data][:attributes]).to be_a(Hash)
    expect(forecast[:data][:attributes].count).to eq(3)

    current = forecast[:data][:attributes][:current_weather]
    expect(current).to have_key(:datetime)
    expect(current).to have_key(:sunrise)
    expect(current).to have_key(:sunset)
    expect(current).to have_key(:temperature)
    expect(current).to have_key(:feels_like)
    expect(current).to have_key(:humidity)
    expect(current).to have_key(:uvi)
    expect(current).to have_key(:visibility)
    expect(current).to have_key(:conditions)
    expect(current).to have_key(:icon)
    expect(current).to_not have_key(:pressure)
    expect(current).to_not have_key(:clouds)
    expect(current).to_not have_key(:dt)
    expect(current[:datetime]).to be_a(String)
    expect(current[:sunrise]).to be_a(String)
    expect(current[:sunset]).to be_a(String)
    expect(current[:temperature]).to be_a(Float)
    expect(current[:feels_like]).to be_a(Float)
    expect(current[:humidity]).to be_a(Float)
    expect(current[:uvi]).to be_a(Float)
    expect(current[:visibility]).to be_an(Integer)
    expect(current[:conditions]).to be_a(String)
    expect(current[:icon]).to be_a(String)
    
    hourly = forecast[:data][:attributes][:hourly_weather]
    hourly.each do |hour|
      expect(hour).to have_key(:time)
      expect(hour).to have_key(:temperature)
      expect(hour).to have_key(:wind_speed)
      expect(hour).to have_key(:wind_direction)
      expect(hour).to have_key(:conditions)
      expect(hour).to have_key(:icon)
      expect(hour).to_not have_key(:pressure)
      expect(hour).to_not have_key(:dt)
      expect(hour).to_not have_key(:dew_point)
      expect(hour[:time]).to be_a(String)
      expect(hour[:temperature]).to be_a(Float)
      expect(hour[:wind_speed]).to be_a(String)
      expect(hour[:wind_direction]).to be_a(String)
      expect(hour[:conditions]).to be_a(String)
      expect(hour[:icon]).to be_a(String)
    end
    
    daily = forecast[:data][:attributes][:daily_weather]
    daily.each do |day|
      expect(day).to have_key(:datetime)
      expect(day).to have_key(:sunrise)
      expect(day).to have_key(:sunset)
      expect(day).to have_key(:max_temp)
      expect(day).to have_key(:min_temp)
      expect(day).to have_key(:conditions)
      expect(day).to have_key(:icon)
      expect(day).to_not have_key(:pressure)
      expect(day).to_not have_key(:dt)
      expect(day).to_not have_key(:pressure)
      expect(day).to_not have_key(:humidity)
      expect(day[:datetime]).to be_a(String)
      expect(day[:sunrise]).to be_a(String)
      expect(day[:sunset]).to be_a(String)
      expect(day[:max_temp]).to be_a(Float)
      expect(day[:min_temp]).to be_a(Float)
      expect(day[:conditions]).to be_a(String)
      expect(day[:icon]).to be_a(String)
    end
  end
end