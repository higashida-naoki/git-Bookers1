Rails.application.routes.draw do
  root:to =>"homes#top"
  resources :books
  post 'books' => 'books#create'
  get 'books/:id/edit' => 'books#edit', as: 'edit'
  get 'books/:id/show' => 'books#show', as: 'show'
  patch 'books/:id' => 'books#update', as: 'update'
  delete 'books/:id' => 'books#destroy', as: 'destroy'
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
