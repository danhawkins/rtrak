class Ticket < ActiveRecord::Base
  attr_accessible :title, :description, :priority_id, :stage_id, :milestone_id, :owner_id, :ticket_type_id, :tag_list
  
  acts_as_taggable
  
  #associations
  belongs_to :priority
  belongs_to :stage
  belongs_to :owner, :class_name => "User", :foreign_key => "owner_id"
  belongs_to :state
  belongs_to :milestone
  belongs_to :type, :class_name => "TicketType", :foreign_key => "ticket_type_id"
  
  belongs_to :parent, :class_name => "Ticket", :foreign_key => "parent_id"
  has_many :children, :class_name => "Ticket", :foreign_key => "parent_id"
  
  has_many :comments, :as => :commentable
  
  default_scope :include => [:priority,:stage,:owner,:state,:milestone,:type]

  def self.search_using_query(query)
    
    #convert from name:dan+age:29 to [['name','dan'],['age','29']]
    q = query.split(' ').collect {|e| e.split(':') unless e.nil?}
    #put the array pairs into key value pairs
    terms_hash = q.inject({}) {|h, (k, v)| h[k] = v; h}

    logger.debug(terms_hash)
    
    self.search(terms_hash)
  end

end
