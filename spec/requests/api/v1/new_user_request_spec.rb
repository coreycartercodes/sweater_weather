require 'rails_helper'

describe 'API' do
  it 'sends New User Request' do

    user_params = {
      "email": "whatever@example.com",
      "password": "password",
      "password_confirmation": "password"
    }
    headers = { 'CONTENT_TYPE' => 'application/json' }

    post '/api/v1/users', headers: headers, params: JSON.generate(user_params)

    expect(response).to be_successful
  end
end