class Priority < ActiveRecord::Base
  attr_accessible :name, :order, :colour
  
  #associations
  has_many :tickets
end
