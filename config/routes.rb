Rails.application.routes.draw do
  resources :topics do
    resources :comments
    resources :photos, only: [:new, :create, :index]
  end

  resources :groups do
    resources :comments
  end

resources :photos, only: [:new, :create, :index]
end
