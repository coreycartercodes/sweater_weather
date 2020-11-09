require 'rails_helper'

describe 'Weather API' do
  it 'sends weather details' do

    get '/api/v1/forecast?location=denver,co'
    binding.pry
    expect(response).to be_successful

    # destinations = JSON.parse(response.body, symbolize_names: true)


    # expect(destinations).to have_key(:data)
    # expect(destinations[:data]).to be_an(Array)
    # expect(destinations[:data].count).to eq(3)
  end
end