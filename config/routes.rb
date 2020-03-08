Rails.application.routes.draw do
  
  devise_for :users
  root "posts#index"
  resources :posts do
    resources :comments, only: :create
    get :search, on: :collection
  end
  resources :categories, only: [:new, :create]

end
