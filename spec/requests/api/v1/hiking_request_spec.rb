require 'rails_helper'

describe 'Hiking API' do
  it 'sends trail location and weather details' do
    
    get '/api/v1/trails?location=denver,co'
    expect(response).to be_successful
    
    trails = JSON.parse(response.body, symbolize_names: true)
        
    expect(trails).to have_key(:data)
    expect(trails[:data]).to be_a(Hash)
    expect(trails[:data][:id]).to eq("null")
    expect(trails[:data][:type]).to eq('trail')
    expect(trails[:data][:attributes]).to be_a(Hash)
    expect(trails[:data][:attributes]).to have_key(:location)
    expect(trails[:data][:attributes][:location]).to be_a(String)
    expect(trails[:data][:attributes]).to have_key(:forecast)
    expect(trails[:data][:attributes][:forecast]).to be_a(Hash)
    expect(trails[:data][:attributes][:forecast]).to have_key(:summary)
    expect(trails[:data][:attributes][:forecast][:summary]).to be_a(String)
    expect(trails[:data][:attributes][:forecast]).to have_key(:temperature)
    expect(trails[:data][:attributes][:forecast][:temperature]).to be_a(String)
    expect(trails[:data][:attributes]).to have_key(:trails)
    expect(trails[:data][:attributes][:trails]).to be_an(Array)

    trails[:data][:attributes][:trails].each do |trail|
      expect(trail).to have_key(:name)
      expect(trail[:name]).to be_a(String)

      expect(trail).to have_key(:summary)
      expect(trail[:summary]).to be_a(String)

      expect(trail).to have_key(:difficulty)
      expect(trail[:difficulty]).to be_a(String)

      expect(trail).to have_key(:location)
      expect(trail[:location]).to be_a(String)

      expect(trail).to have_key(:distance_to_trail)
      expect(trail[:distance_to_trail]).to be_a(String)

    end
  end
end