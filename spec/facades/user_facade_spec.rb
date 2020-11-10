require 'rails_helper'

describe UserFacade do
  it "returns user PORO" do
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
end