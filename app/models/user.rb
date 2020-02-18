class User < ApplicationRecord
  has_many :trips
  has_many :drivers, through: :trips
  has_secure_password
  validates :username, uniqueness: { case_sensitive: false }

end
