require 'securerandom'
class User < ApplicationRecord
  validates :email, uniqueness: true, presence: true
  validates :password, presence: true
  validates :api_key, uniqueness: true, presence: true
  has_secure_password
end
