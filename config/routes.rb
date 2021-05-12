Rails.application.routes.draw do
  resources :genres
  resources :filmographies
  resources :characters
  post 'login', to: 'session#login'
end
