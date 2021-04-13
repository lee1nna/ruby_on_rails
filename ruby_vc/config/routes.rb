Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "home#index"
  get '/attack', to: 'home#attack'
  get '/defense', to: 'home#defense'
end
