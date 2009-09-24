class User < ActiveRecord::Base
  attr_accessible :name,:username, :email, :password, :password_confirmation
  
  validates_presence_of :name
  
  #associations
  belongs_to :role
  has_one :dashboard
  
  acts_as_authentic
  
  
end
