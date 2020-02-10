Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :users, only: [:show, :create, :update, :destroy]
      resources :locations, only: [:show]
      resources :experiences, only: [:show]
      resources :events, only: [:show]
      resources :favorites, only: [:show, :create, :update, :destroy]
      resources :saves, only: [:show, :create, :update, :destroy]
      resources :trips, only: [:show, :create, :update, :destroy]
    end
  end

end

