Rails.application.routes.draw do
  resources :posts
  root to: "posts#index"
  resources :posts, only: [:index, :new, :create, :destroy, :edit, :update]
end
