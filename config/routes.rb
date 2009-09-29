ActionController::Routing::Routes.draw do |map|
  
  map.resource :dashboard
  
  map.resources :ticket_types
  map.resources :states
  map.resources :milestones
  map.resources :priorities
  map.resources :stages
  map.resources :tickets, :has_many => 'comments'
  
  map.resources :roles
  
  map.resources :user_sessions
  map.resources :users
  
  #authlogic
  map.login "login", :controller => "user_sessions", :action => "new"
  map.logout "logout", :controller => "user_sessions", :action => "destroy"
  
  #admin namespace
  map.namespace :admin do |admin|
    admin.resources :users
    admin.resources :settings
  end
  
  #root
  map.root :controller => "dashboards", :action => "show"

  #defaults
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
