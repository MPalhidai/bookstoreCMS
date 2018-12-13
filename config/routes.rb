Rails.application.routes.draw do
  resources :books, except: [:new, :edit]
  resources :comments, only: [:create, :destroy]
end
