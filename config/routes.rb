Rails.application.routes.draw do
  resources :topics do
    resources :comments
  end
  
  resources :groups do
    resources :comments
  end
end
