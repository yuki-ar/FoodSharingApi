Rails.application.routes.draw do
  root 'items#index'
  resources :items, only: [:index, :show]
  resources :shops, only: [:index, :show]
  resources :purchases, only: [:index]
end
