Rails.application.routes.draw do

  root 'topics#index'
  resources :user_sessions
  resources :users
  resources :faq

  get '/login' => 'user_sessions#new', :as => :login
  get '/logout' => 'user_sessions#destroy', :as => :logout


  resources :topics do
    resources :comments
    resources :photos, only: [:new, :create, :index]
  end

  resources :groups do
    resources :comments
  end

  resources :photos, only: [:new, :create, :index]
end
