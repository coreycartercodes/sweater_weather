require 'rails_helper'

describe 'Hiking API' do
  it 'sends trail location and weather details' do
    #### Started to implement webmock, realized that it would require 10+ stubs.

    # map_response = File.read('spec/fixtures/denver_mapquest.json')
    # stub_request(:get, "http://www.mapquestapi.com/geocoding/v1/address?key=#{ENV['MAPQUEST_KEY']}&location=denver,co").
    #      with(
    #        headers: {
    #    	  'Accept'=>'*/*',
    #    	  'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
    #    	  'User-Agent'=>'Faraday v1.1.0'
    #        }).
    #      to_return(status: 200, body: map_response, headers: {})

    # hiking_response = File.read('spec/fixtures/denver_hike.json')
    # stub_request(:get, "https://www.hikingproject.com/data/get-trails?key=#{ENV['HIKING_KEY']}&lat=39.738453&lon=-104.984853").
    # with(
    #   headers: {
    # 'Accept'=>'*/*',
    # 'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
    # 'User-Agent'=>'Faraday v1.1.0'
    #   }).
    # to_return(status: 200, body: hiking_response, headers: {})

    # weather_response = File.read('spec/fixtures/denver_forecast.json')
    # stub_request(:get, "https://api.openweathermap.org/data/2.5/onecall?appid=b62be7371b4b4fd9e257a1863f480f8a&exclude=minutely,alerts&lat=39.738453&lon=-104.984853&units=imperial").
    #      with(
    #        headers: {
    #    	  'Accept'=>'*/*',
    #    	  'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
    #    	  'User-Agent'=>'Faraday v1.1.0'
    #        }).
    #      to_return(status: 200, body: weather_response, headers: {})

    # distance_response = File.read('spec/fixtures/denver_distance.json')

    # stub_request(:get, "http://www.mapquestapi.com/directions/v2/route?from=denver,co&key=wvQ56c6eH2gN0g1cp7OmILdnACgsHuIJ&to=Superior,%20Colorado").
    # with(
    #   headers: {
    # 'Accept'=>'*/*',
    # 'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
    # 'User-Agent'=>'Faraday v1.1.0'
    #   }).
    # to_return(status: 200, body: distance_response, headers: {})

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