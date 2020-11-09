require 'rails_helper'

describe 'Weather API' do
  it 'sends weather details' do
    
    get '/api/v1/forecast?location=denver,co'
    expect(response).to be_successful
    
    forecast = JSON.parse(response.body, symbolize_names: true)
    
    
    expect(forecast).to have_key(:data)
    expect(forecast[:data]).to be_a(Hash)
    expect(forecast[:data][:id]).to eq(nil)
    expect(forecast[:data][:type]).to eq('forecast')
    expect(forecast[:data][:attributes]).to be_a(Hash)
    expect(forecast[:data][:attributes].count).to eq(3)

#     current temperature and conditions for the start location
# name of the trail
# summary of each trail
# difficulty of each trail
# location of each trail
# estimated distance to each trail

    expect(current).to have_key(:datetime)
    expect(current).to have_key(:sunrise)
    expect(current).to have_key(:sunset)
    expect(current).to have_key(:temperature)
    expect(current).to have_key(:feels_like)
  end
end