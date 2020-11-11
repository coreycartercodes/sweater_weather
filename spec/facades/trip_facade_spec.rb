require 'rails_helper'

describe TripFacade do
  it "returns user PORO from create", :vcr do
    trip = TripFacade.trip_info("Denver,CO", "Pueblo,CO")

    expect(trip).to be_a(Trip)
    expect(trip.id).to eq("null")
    expect(trip.start_city).to eq("Denver,CO")
    expect(trip.end_city).to eq("Pueblo,CO")
    expect(trip.travel_time).to be_a(String)
    expect(trip.weather_at_eta).to be_a(Hash)
    expect(trip.weather_at_eta).to have_key(:temperature)
    expect(trip.weather_at_eta).to have_key(:conditions)
  end
  
  it "returns user PORO from create, with impossible trip", :vcr do
    trip = TripFacade.trip_info("Denver,CO", "London,UK")

    expect(trip).to be_a(Trip)
    expect(trip.weather_at_eta).to be_a(String)
    expect(trip.travel_time).to eq("Impossible Route!")
    expect(trip.weather_at_eta).to eq("¯\_(ツ)_/¯")
  end
end