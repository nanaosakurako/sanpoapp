Rails.application.routes.draw do
  get 'areas/index' => "areas#index"
  get 'areas/:id' => "areas#show"

  get 'login' => "users#login_form"
  post 'login' => "users#login"
  post 'logout' => "users#logout"
  
  get 'posts/index' => "posts#index"
  get 'posts/new' => "posts#new"
  get 'posts/:id' => "posts#show"
  post'posts/create' => "posts#create"
  get 'posts/:id/edit' => "posts#edit"
  post 'posts/:id/update' => "posts#update"
  post 'posts/:id/destroy' => "posts#destroy"
  
  post "users/:id/update" => "users#update"
  get "users/:id/edit" => "users#edit"
  post "users/create" => "users#create"
  get "signup" => "users#new"
  get "users/index" => "users#index"
  get "users/:id" => "users#show"
  
  get '/' => "home#top"
  get 'about' => "home#about"
 
   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
