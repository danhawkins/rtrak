ActionController::Routing::Routes.draw do |map|
  map.resources :comments

  map.resources :ticket_types

  map.resources :states

  map.resources :milestones

  map.resources :priorities

  map.resources :stages

  map.resources :tickets

  map.resource :dashboard
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
