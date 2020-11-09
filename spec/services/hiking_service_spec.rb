require 'rails_helper'

describe HikingService do
  it 'sends weather details' do
    response = HikingService.get_trails("39.738453", "-104.984853")
    expect(response).to have_key(:trails)
    response[:trails].each do |trail|
      expect(trail).to have_key(:name)
      expect(trail).to have_key(:type)
      expect(trail).to have_key(:summary)
      expect(trail).to have_key(:difficulty)
    end
  end
end