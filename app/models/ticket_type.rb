class TicketType < ActiveRecord::Base
  attr_accessible :name
  
  #associations
  has_many :tickets
end
