require 'securerandom'
class User < ApplicationRecord
  before_create :generate_api_key
  has_secure_password
  before_save 
  validates :email, uniqueness: true, presence: true
  validates :password, presence: true
  attr_reader :email, :id, :api_key


  private
  def generate_api_key
    self.api_key = SecureRandom.urlsafe_base64
  end

end
