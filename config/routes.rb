Rails.application.routes.draw do
  # get 'cohorts/index'
  # get 'cohorts/edit'
  # get 'cohorts/update'
  # # get 'courses/index'
  # get 'courses/edit'
  # get 'courses/update'
  # get 'index/edit'
  # get 'index/update'
  # get 'instructors/index'
  # get 'instructors/edit'
  # get 'instructors/update'
  # get 'instructors/destroy'
  root to: 'welcome#index'
  # get 'posts/index'
  # get 'posts/edit'
  # get 'posts/update'
  # get 'posts/destroy'

  # root to: 'students#index'
  # post '/posts' => 'posts#create'
  # get '/post/:id' => 'posts#destroy'
  # put '/post/:id' => 'posts#update'
  

  resources :cohorts
  resources :courses
  resources :instructors
  resources :students
  
 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
