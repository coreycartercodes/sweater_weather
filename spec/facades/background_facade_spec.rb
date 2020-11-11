require 'rails_helper'

describe BackgroundFacade do
  it "returns Background PORO", :vcr do
    background = BackgroundFacade.get_pic("aspen,co")
    expect(background).to be_a(Background)
    expect(background.image).to be_a(Hash)
    expect(background.image[:location]).to eq('aspen,co')
    expect(background.image[:image_url]).to be_a(String)
    expect(background.image[:credit]).to be_a(Hash)
    expect(background.image).to_not have_key(:height)
    expect(background.image).to_not have_key(:description)
    expect(background.image).to_not have_key(:links)
  end
end