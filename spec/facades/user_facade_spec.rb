require 'rails_helper'

describe UserFacade do
  it "returns user PORO from create", :vcr do
    user_params = {
      "email": "whatever@aol.com",
      "password": "password",
      "password_confirmation": "password"
    }
    
    user = UserFacade.create(user_params)
    expect(user).to be_a(User)
    expect(user.email).to eq(user_params[:email])
    expect(user.api_key).to be_a(String)
  end

  it "returns errors for create", :vcr do
    user_params = {
      "email": "",
      "password": "password",
      "password_confirmation": "password"
    }
    
    user = UserFacade.create(user_params)
    expect(user.errors.full_messages.to_sentence).to eq("Email can't be blank")
  end
  end