require 'securerandom'

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

  def self.find_api(api)
    User.find_by(api_key: api)
  end
  
  private
  def self.generate_api_key
    SecureRandom.urlsafe_base64
  end

end