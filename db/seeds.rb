# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)



user = User.create(:name => 'Administrator', :username => 'admin', :email => 'admin@hawkinsking.com')
user.password = user.password_confirmation = 'letmein'
user.save!

Stage.create([
  {:name => 'Not Started'},
  {:name => 'In Progress'},
  {:name => 'Peer Review'},
  {:name => 'QA'},
  {:name => 'Complete'}
])

State.create([
  {:name => 'New', :openstate => true},
  {:name => 'Assigned', :openstate => true},
  {:name => 'Wont Fix', :openstate => false},
  {:name => 'Duplicate', :openstate => false},
  {:name => 'Invalid', :openstate => false}
])

TicketType.create([
  {:name => 'Bug'},
  {:name => 'Feature'}
])

Priority.create([
  {:name => 'Blocker'},
  {:name => 'Critical'},
  {:name => 'Major'},
  {:name => 'Minor'},
  {:name => 'Trivial'}
])