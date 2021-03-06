Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'dashboard#index'

  namespace :api do
    namespace :v1 do
      get '/forecast', to: 'weather#index'
      get '/backgrounds', to: 'image#index'
      post '/users', to: 'users#create'
      post '/sessions', to: 'users#login'
      post '/road_trip', to: 'trips#create'
    end
  end
end
