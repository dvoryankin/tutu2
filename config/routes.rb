Rails.application.routes.draw do
  resources :users
  resources :tickets
  resources :routes
  resources :trains
  resources :railway_stations
  root 'welcome#index'
end
