class Stage < ActiveRecord::Base
  attr_accessible :name, :colour
  
  #associations
  has_many :tickets
end
