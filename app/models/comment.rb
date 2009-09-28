class Comment < ActiveRecord::Base
  attr_accessible :body, :creator_id, :commentable_id, :commentable_type
  #associations
  belongs_to :commentable, :polymorphic => true
  
  
end
