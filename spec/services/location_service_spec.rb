require 'rails_helper'

describe LocationService do
  it 'sends coordinate details', :vcr do
    location = LocationService.get_location("pittsburgh,pa")
    expect(location).to have_key(:lat)
    expect(location[:lat]).to be_a(Float)
    expect(location).to have_key(:lng)
    expect(location[:lng]).to be_a(Float)
  end

  it 'sends directions between two locations', :vcr do
    location = LocationService.directions("pittsburgh,pa", "denver,co")
    expect(location).to have_key(:route)
    expect(location[:route][:distance]).to be_a(Float)
    expect(location[:route][:realTime]).to be_an(Integer)
    expect(location[:route][:formattedTime]).to be_an(String)
  end
end