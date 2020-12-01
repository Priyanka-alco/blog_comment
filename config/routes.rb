Rails.application.routes.draw do
  resources :users
  resources :comments
  resources :blogs
  post '/add_comment', to:"comments#add_comment"
  post 'authenticate', to: 'users#authenticate'
  get '/show_comment', to:"comments#show_comment"
  get '/login', to:"users#login"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
