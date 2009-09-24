class Domain < ActiveRecord::Base
  attr_accessible :name, :description, :url, :active
end
