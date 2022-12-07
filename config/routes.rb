Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :products do
        resources :reviews
      end
      resources :orders

      resources :users do 
        resources :orders
      end
    end
  end
end