Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
namespace :api do
  namespace :v1 do
    get '/forecast', to: 'weather#current'
    get '/backgrounds', to: 'weather#image'
    get '/climbing_routes', to: 'routes#index'
  end
end
end
