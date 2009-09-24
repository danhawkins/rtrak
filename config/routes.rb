ActionController::Routing::Routes.draw do |map|
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
  end
  
  #root
  map.root :controller => "pages"

  #defaults
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
