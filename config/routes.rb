Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  resources :books, except: [:new, :edit]
  get '/books/:id/comments', to: 'books#comments'
  resources :comments, only: [:create, :destroy]
end
