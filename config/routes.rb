Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post 'authenticate', to: 'authentication#authenticate'
      resources :users, only: [:create, :edit, :destroy]
    end
  end
end
