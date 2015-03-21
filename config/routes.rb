Rails.application.routes.draw do

  get 'interests/index'

  devise_for :users
  resources :users
  match "agenda", to: "agenda#index", via: :get
  namespace :api do
    resources :events, only: :index
    resources :posts, only: :index
    resources :pages, only: :index
    resources :interests, only: :index
    resources :categories, only: :index do
      resources :interests, only: :index
    end
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
  resource :search, only: :create
  mount Storytime::Engine => "/"
end
