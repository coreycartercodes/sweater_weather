require 'rails_helper'

describe 'API' do
  it 'completes new user request/response' do

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

  it 'sends errors from new user request' do

    user_params = {
      "email": "",
      "password": "password",
      "password_confirmation": "password"
    }
    headers = { 'CONTENT_TYPE' => 'application/json' }

    post '/api/v1/users', headers: headers, params: JSON.generate(user_params)
    resp = JSON.parse(response.body, symbolize_names: true)

    expect(response.status).to eq(400)

    expect(resp[:errors]).to eq("Email can't be blank")
  end

  it 'completes login request' do 
    user = User.create!({email: "whatever@aol.com",
      password: "password",
      api_key: "1543qwretg3541",
      password_confirmation: "password"})

    user_params = {
      "email": "whatever@aol.com",
      "password": "password",
    }
    headers = { 'CONTENT_TYPE' => 'application/json' }

    post '/api/v1/sessions', headers: headers, params: JSON.generate(user_params)

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

  it 'sends errors for login request' do 
    user = User.create!({email: "whatever@aol.com",
      password: "password",
      api_key: "1543qwretg3541",
      password_confirmation: "password"})

    user_params = {
      "email": "a",
      "password": "password",
    }
    headers = { 'CONTENT_TYPE' => 'application/json' }

    post '/api/v1/sessions', headers: headers, params: JSON.generate(user_params)
    resp = JSON.parse(response.body, symbolize_names: true)
    expect(response.status).to eq(404)
    expect(resp[:errors]).to eq("Incorrect email/password combination")
  end
end