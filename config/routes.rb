Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users
  resources :posts
  resources :homes
  resources :genres
  	resource :comments
  	resource :favorites

  	get "/" => "homes#top"
  	post "search" => "posts#search"
end
