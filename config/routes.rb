Rails.application.routes.draw do
  get 'tests/new'

  get 'tests/index'

  get '/users/new', :to => "users#new"
  post "/user/new", :to => "users#create"
  
  get "/user/:id/edit", :to => "users#edit"
  patch "/user/:id/update", :to => "users#update"
  
  patch "/user/:id/update_last", :to => "users#update_last"

  get 'users/show', :to => "users#show"

  get 'bots/index'
  
get 'bots/index'
  post 'bots/index'

get "/users/index", :to => "users#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
