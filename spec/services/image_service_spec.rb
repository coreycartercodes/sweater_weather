require 'rails_helper'

describe ImageService do
  it 'sends background details', :vcr do
    response = ImageService.pic("pittsburgh,pa")
    expect(response).to have_key(:id)
    expect(response[:id]).to be_a(String)
    expect(response).to have_key(:urls)
    expect(response[:urls]).to be_a(Hash)
    expect(response[:urls]).to have_key(:full)
    expect(response).to have_key(:user)
    expect(response[:user]).to be_a(Hash)
    expect(response[:user]).to have_key(:name)
  end
end