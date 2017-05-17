Rails.application.routes.draw do
  
  devise_for :admin
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  unauthenticated do
    devise_scope :admin do
      root to: "home#home"
    end
  end
  
  authenticated :admin do
    devise_scope :admin do
      root to: "rails_admin/main#dashboard"
    end
  end


  post "/authorize/social" => "authentication#authenticate"

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
    get "/users/:id/activities" => "users#activities"  #needs id (ejem id=1)
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
