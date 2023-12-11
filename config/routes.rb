Rails.application.routes.draw do
  devise_for :users

  resources :orders
  resources :lineitems do
    member do
      post 'increment_quantity'
      post 'decrement_quantity'
    end
  end
  
  resources :carts

    # setting default page for '/'
    root "shopper#index", as: "shopper"
  get 'shopper/index'
  get 'shopper/:id', to: 'shopper#show', as: :shopper_show
  resources :products
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
