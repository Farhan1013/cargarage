Rails.application.routes.draw do


  resources :sessions

  resources :users

  root 'users#index'

  get 'garages/' => 'garages#index'

  get 'garages/new' => 'garages#new'

  get 'garages/:id' => 'garages#show', as: :garage

  post 'garages/'  => 'garages#create'

  get 'garages/:id/edit' => 'garages#edit', as: :edit_garage

  patch 'garages/:id' => 'garages#update'

  delete  'garages/:id' => 'garages#destroy'




end
