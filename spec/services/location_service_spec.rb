require 'rails_helper'

describe LocationService do
  it 'sends coordinate details' do
    location = LocationService.get_location("pittsburgh,pa")
    expect(location).to have_key(:lat)
    expect(location[:lat]).to be_a(Float)
    expect(location).to have_key(:lng)
    expect(location[:lng]).to be_a(Float)
  end

  it 'sends distance between two locations' do
    location = LocationService.get_distance("pittsburgh,pa", "denver,co")
    expect(location).to be_a(Float)
  end
end