require 'rails_helper'

describe 'API' do
  it 'sends New User Request' do

    user_params = {
      "email": "whatever@aol.com",
      "password": "password",
      "password_confirmation": "password"
    }
    headers = { 'CONTENT_TYPE' => 'application/json' }

    post '/api/v1/users', headers: headers, params: JSON.generate(user_params)

    expect(response).to be_successful
    user = JSON.parse(response.body, symbolize_names: true)[:data]

    expect(user).to have_key(:id)
    expect(user).to have_key(:type)
    expect(user[:type]).to eq("users")
    expect(user).to have_key(:attributes)
    expect(user[:attributes]).to have_key(:email)
    expect(user[:attributes][:email]).to eq(user_params[:email])
    expect(user[:attributes]).to have_key(:api_key)
    expect(user[:attributes]).to_not have_key(:password)
    expect(user[:attributes]).to_not have_key(:password_digest)

  end
end