Rails.application.routes.draw do
  root :to => "posts#index"
  resources :comments
  post '/comments' => 'comments#destroy'
  post '/comments' => 'comments#create'
  
  resources :posts
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
