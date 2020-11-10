require 'rails_helper'

describe 'Image API' do
  it 'sends Image details' do

    get '/api/v1/backgrounds?location=denver,co'
    expect(response).to be_successful
    background = JSON.parse(response.body, symbolize_names: true)

    expect(background).to have_key(:data)
    expect(background[:data]).to be_a(Hash)
    expect(background[:data][:id]).to eq("null")
    expect(background[:data][:type]).to eq('image')
    expect(background[:data][:attributes]).to be_a(Hash)
    expect(background[:data][:attributes]).to have_key(:image)
    expect(background[:data][:attributes][:image]).to be_a(Hash)
    expect(background[:data][:attributes][:image]).to have_key(:location)
    expect(background[:data][:attributes][:image][:location]).to eq('denver,co')
    expect(background[:data][:attributes][:image]).to have_key(:image_url)
    expect(background[:data][:attributes][:image]).to have_key(:credit)
    expect(background[:data][:attributes][:image][:credit]).to be_a(Hash)
    expect(background[:data][:attributes][:image][:credit]).to have_key(:source)
    expect(background[:data][:attributes][:image][:credit]).to have_key(:author)
    expect(background[:data][:attributes][:image][:credit]).to have_key(:logo)
  end
end