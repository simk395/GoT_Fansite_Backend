Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/categories', to: "category#index"
  get '/posts', to: "posts#index"
end
