Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pedals#index'
  resources :pedals
  get '/random' => 'pedals#random'
  get '/search' => 'pedals#search'
end
