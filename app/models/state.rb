class State < ActiveRecord::Base
  attr_accessible :name, :openstate
  
  #associations
  has_many :tickets
end
