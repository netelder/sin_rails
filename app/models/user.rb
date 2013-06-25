require 'validates_email_format_of'

class User < ActiveRecord::Base

  has_many :urls
  
  has_secure_password
  
  validates_presence_of :password, :on => :create
  validates_presence_of :email, :name
  validates_uniqueness_of  :email
  validates_email_format_of :email  

end

