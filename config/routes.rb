Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :cards, only: [:index, :show, :destroy]
      resources :categories
      resources :tags, only: [:index, :show]
      post '/signInUser', to: "users#sign_in"
      get '/users/:id', to: "users#show"
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/test', to: "application#test"
end
