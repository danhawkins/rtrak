class Ticket < ActiveRecord::Base
  attr_accessible :title, :description, :priority_id, :stage_id, :milestone_id, :owner_id
  
  #associations
  belongs_to :priority
  belongs_to :stage
  belongs_to :owner, :class_name => "User", :foreign_key => "owner_id"
  belongs_to :state
  belongs_to :milestone

end
