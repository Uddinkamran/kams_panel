Rails.application.routes.draw do
  # get 'posts/index'
  # get 'posts/edit'
  # get 'posts/update'
  # get 'posts/destroy'

  root to: 'students#index'
  # post '/posts' => 'posts#create'
  # get '/post/:id' => 'posts#destroy'
  # put '/post/:id' => 'posts#update'

  resources :students
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end