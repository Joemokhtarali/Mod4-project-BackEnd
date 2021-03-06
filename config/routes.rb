Rails.application.routes.draw do
  resources :trees
  resources :atmospheres
  resources :users

  post '/signup', to: 'users#create'
  post '/login', to: 'auth#login'
  get '/auto_login', to: 'auth#auto_login'
  # patch '/trees/id', to 'trees'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
