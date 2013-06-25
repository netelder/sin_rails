# require 'bcrypt'

class User < ActiveRecord::Base
  # include BCrypt

  has_many :urls
  
  has_secure_password
  
  validates_presence_of :password, :on => :create

  # before_create :encrypt_password

  # private

  # def self.authenticate(email, password)
  #   user = User.find_by_email(email)
  #   if user
  #     db_pass = Password.new(user.password_digest)
  #     db_pass == password
  #   else
  #     false
  #   end
  # end

  # def encrypt_password
  #   password = Password.create(self.password_digest)
  #   self.password_digest = password
  # end

end

