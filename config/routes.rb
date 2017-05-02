Rails.application.routes.draw do
  resources :tips
  resources :payments
  resources :subscriptions
  resources :account_types
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
