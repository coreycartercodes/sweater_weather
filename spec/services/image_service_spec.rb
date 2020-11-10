require 'rails_helper'

describe ImageService do
  it 'sends weather details' do
    response = ImageService.pic("denver,co")

    binding.pry
    expect(response).to have_key(:dt)
  end
end