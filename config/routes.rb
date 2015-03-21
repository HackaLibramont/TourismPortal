Rails.application.routes.draw do

  get 'interests/index'

  devise_for :users
  resources :users
  namespace :api do
    resources :events, only: :index
    resources :posts, only: :index
    resources :pages, only: :index
  end
  resources :interests, only: [:index, :show] do
    collection do
      match "map", to: "interests#map", via: :get
      match "liked", to: "interests#liked", via: :get
    end
    member do
      match "like", to: "likeable#create", via: :post
      match "dislike", to: "likeable#destroy", via: :delete
    end

  end
  resources :categories, only: :index do
    resources :interests, only: :index
  end
  mount Storytime::Engine => "/"
end
