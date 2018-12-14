Rails.application.routes.draw do
  resources :books, except: [:new, :edit]
  get '/books/:id/comments', to: 'books#comments'
  resources :comments, only: [:create, :destroy]
end
