Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create]
      post '/login', to: 'auth#create'
      get '/current_user', to: 'auth#show'
    end
  end
  get '/categories', to: "category#index"
  get '/posts', to: "posts#index"
  get '/comments', to: "comment#index"
  post '/comments', to: "comment#create"
  delete '/comments/:id', to: "comment#destroy"
end
