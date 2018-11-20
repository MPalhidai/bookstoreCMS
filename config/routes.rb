Rails.application.routes.draw do
  resources :books, except: [:new, :edit]
  root 'books#index'
end
