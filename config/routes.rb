Rails.application.routes.draw do
  devise_for :shops, controllers: {
  sessions:      'shops/sessions',
  passwords:     'shops/passwords',
  registrations: 'shops/registrations'
}
  root 'items#index'
  resources :items, only: [:index, :show]
  resources :shops, only: [:index, :show]
  resources :purchases, only: [:index]
  resources :purchased_history, only: [:index, :show]
end
