Rails.application.routes.draw do

  root 'home#home'
  
  namespace :v1 do
    resources :activities
    resources :events
    resources :training_activities
    resources :training_plans
    resources :relationships
    resources :tips
    resources :payments
    resources :subscriptions
    resources :account_types
    resources :users
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
