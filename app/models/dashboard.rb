class Dashboard < ActiveRecord::Base
  attr_accessible :user
  
  #associations
  belongs_to :user
  
end
