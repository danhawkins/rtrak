class Milestone < ActiveRecord::Base
  attr_accessible :name, :start_date, :due_date, :end_date, :goals
  
  #associations
  has_many :tickets
end
