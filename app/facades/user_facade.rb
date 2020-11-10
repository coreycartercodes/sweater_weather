class UserFacade

  def self.create(user_params)
    user_data = {
      email: user_params[:email],
      api_key: generate_api_key,
      password: user_params[:password],
      password_confirmation: user_params[:password_confirmation]
    }
    User.create(user_data)
  end
  
  private
  def self.generate_api_key
    SecureRandom.urlsafe_base64
  end

end