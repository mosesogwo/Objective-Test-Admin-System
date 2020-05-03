Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post 'authenticate', to: 'authentication#authenticate'
      resources :users, only: [:create, :update, :destroy]
      resources :tests, only: [:index, :create, :update, :destroy] do
        resources :questions
      end
      resources :user_tests, only: [:create]
    end
  end
end
