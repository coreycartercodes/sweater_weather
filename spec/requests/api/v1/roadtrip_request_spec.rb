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

  end
end