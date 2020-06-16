class User < ApplicationRecord
  has_secure_password

  validates_presence_of :email
  validates_presence_of :password_confirmation, on: [:create]

  validates_format_of :email, with: /.+@.+/
  validates :password, length: {minimum: 6}, on: [:create]

end


