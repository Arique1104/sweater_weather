Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
namespace :api do
  namespace :v1 do
    get '/forecast', to: 'weather#current'
    get '/backgrounds', to: 'weather#image'
    post '/users', to: 'users#create'
    post '/sessions', to: 'sessions#create'
    post '/road_trip', to: 'roadtrips#create'
  end
end
end
