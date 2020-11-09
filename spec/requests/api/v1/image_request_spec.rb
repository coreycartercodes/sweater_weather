require 'rails_helper'

RSpec.describe 'Weather API' do
  it 'Can retrieve forcast' do

    get '/api/v1/backgrounds?location=denver,co'

    expect(response).to be_successful
  end
end