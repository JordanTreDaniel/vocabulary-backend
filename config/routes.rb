Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
     resources :cards, only: [:index, :show]
     resources :categories, only: [:index, :show, :update]
     resources :tags, only: [:index, :show]
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/test', to: "application#test"
end
