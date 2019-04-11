Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create, :update, :destroy]
      post '/login', to: 'auth#create'
      get '/current_user', to: 'auth#show'
      
    end
  end
  resources :categories, only: [:index]
  resources :posts, only: [:index, :create, :update]
  resources :comments, only: [:index, :create, :update, :destroy]
  
end
