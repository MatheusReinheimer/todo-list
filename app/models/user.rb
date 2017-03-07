class User < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :password, :password_confirmation, on: [:create, :update]
  validates_format_of :email, with: /\A.+@.+\z/
  validates_length_of :password, minimum: 4
  validates_confirmation_of :password
  validates_uniqueness_of :email
end
