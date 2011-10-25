ActionController::Routing::Routes.draw do |map|
  
  map.resources :entries
  map.resources :pages
  map.resources :details
  
  map.connect ':controller/:action/:id'
  map.root :controller => 'entries'
  
end

## Lenz, rails 2