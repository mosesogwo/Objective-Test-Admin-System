Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post 'authenticate', to: 'authentication#authenticate'
      resources :users, only: [:create, :update, :destroy]
      resources :tests do
        resources :questions
      end
    end
  end
end
