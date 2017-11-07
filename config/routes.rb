Rails.application.routes.draw do
# Thomas put this root and resouce in here, dont have to do it like this, just how I know how to
  root 'recipes#index'

  resources :recipes

  get '/', to: redirect('/login')

  get '/users/new', to: 'users#new'
  post '/users', to: 'users#create'
  get 'users/:id', to: 'users#show'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#delete'
  get '/ratings/new', to: 'ratings#new'
  post '/ratings', to: 'ratings#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
