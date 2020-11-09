require 'rails_helper'

describe TrailFacade do
  it "returns trails PORO" do
    collection = TrailFacade.get_weather("aspen,co")

    expect(collection).to be_a(Trail)
    expect(collection.id).to eq("null")
    expect(collection.location).to eq("aspen,co")
    expect(collection.forecast).to be_a(Hash)
    expect(collection.forecast).to have_key(:summary)
    expect(collection.forecast).to have_key(:temperature)
    expect(collection.trails).to be_an(Array)

    collection.trails.each do |trail|
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