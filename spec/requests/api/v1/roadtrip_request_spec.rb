require 'rails_helper'

describe 'Roadtrip API' do
  before :each do
    @user = User.create!({email: "whatever@aol.com",
      password: "password",
      api_key: "1543qwretg3541",
      password_confirmation: "password"})
    end

  it 'Creates a new trip request' do
    
    trip_params = {
      "origin": "Denver,CO",
      "destination": "Pueblo,CO",
      "api_key": "1543qwretg3541"
    }
    headers = { 'CONTENT_TYPE' => 'application/json' }

    post '/api/v1/road_trip', headers: headers, params: JSON.generate(trip_params)

    expect(response).to be_successful
    expect(response.status).to eq(201)

    trip = JSON.parse(response.body, symbolize_names: :true)[:data]

    expect(trip).to have_key(:id)
    expect(trip).to have_key(:type)
    expect(trip[:type]).to eq("roadtrip")
    expect(trip).to have_key(:attributes)
    expect(trip[:attributes]).to have_key(:start_city)
    expect(trip[:attributes][:start_city]).to eq(trip_params[:origin])
    expect(trip[:attributes]).to have_key(:end_city)
    expect(trip[:attributes][:end_city]).to eq(trip_params[:destination])
    expect(trip[:attributes]).to have_key(:travel_time)
    expect(trip[:attributes]).to have_key(:weather_at_eta)
    expect(trip[:attributes][:weather_at_eta]).to have_key(:temperature)
    expect(trip[:attributes][:weather_at_eta]).to have_key(:conditions)
  end

  it 'shows impossible trip' do
    
    trip_params = {
      "origin": "Denver,CO",
      "destination": "London, UK",
      "api_key": "1543qwretg3541"
    }
    headers = { 'CONTENT_TYPE' => 'application/json' }

    post '/api/v1/road_trip', headers: headers, params: JSON.generate(trip_params)

    expect(response).to be_successful
    expect(response.status).to eq(201)

    trip = JSON.parse(response.body, symbolize_names: :true)[:data]
    expect(trip).to have_key(:id)
    expect(trip).to have_key(:type)
    expect(trip[:type]).to eq("roadtrip")
    expect(trip).to have_key(:attributes)
    expect(trip[:attributes]).to have_key(:start_city)
    expect(trip[:attributes][:start_city]).to eq(trip_params[:origin])
    expect(trip[:attributes]).to have_key(:end_city)
    expect(trip[:attributes][:end_city]).to eq(trip_params[:destination])
    expect(trip[:attributes]).to have_key(:travel_time)
    expect(trip[:attributes][:travel_time]).to eq('Impossible Route!')
  end
  it 'shows multi-day trip' do
    
    trip_params = {
      "origin": "Denver,CO",
      "destination": "Anchorage,AK",
      "api_key": "1543qwretg3541"
    }
    headers = { 'CONTENT_TYPE' => 'application/json' }

    post '/api/v1/road_trip', headers: headers, params: JSON.generate(trip_params)

    expect(response).to be_successful
    expect(response.status).to eq(201)

    trip = JSON.parse(response.body, symbolize_names: :true)[:data]
    expect(trip).to have_key(:id)
    expect(trip).to have_key(:type)
    expect(trip[:type]).to eq("roadtrip")
    expect(trip).to have_key(:attributes)
    expect(trip[:attributes]).to have_key(:start_city)
    expect(trip[:attributes][:start_city]).to eq(trip_params[:origin])
    expect(trip[:attributes]).to have_key(:end_city)
    expect(trip[:attributes][:end_city]).to eq(trip_params[:destination])
    expect(trip[:attributes]).to have_key(:travel_time)
    expect(trip[:attributes]).to have_key(:weather_at_eta)
    expect(trip[:attributes][:weather_at_eta]).to have_key(:temperature)
    expect(trip[:attributes][:weather_at_eta]).to have_key(:conditions)
  end

  it 'shows unauthorized user' do
    
    trip_params = {
      "origin": "Denver,CO",
      "destination": "Anchorage,AK",
      "api_key": "asdffdas"
    }
    headers = { 'CONTENT_TYPE' => 'application/json' }

    post '/api/v1/road_trip', headers: headers, params: JSON.generate(trip_params)

    expect(response.status).to eq(401)
    resp = JSON.parse(response.body, symbolize_names: true)
    expect(resp[:errors]).to eq("Unauthorized")
  end

  it 'errors with nonsense city' do
    
    trip_params = {
      "origin": "Denver,CO",
      "destination": "aslfjsadf,AK",
      "api_key": "1543qwretg3541"
    }
    headers = { 'CONTENT_TYPE' => 'application/json' }

    post '/api/v1/road_trip', headers: headers, params: JSON.generate(trip_params)
    binding.pry
    expect(response).to be_successful
    expect(response.status).to eq(201)
  end
  
end