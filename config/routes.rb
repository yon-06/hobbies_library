Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users

  resources :posts do
    resource :comments, only: [:create, :destroy]
    resource :favorites, only: [:create, :destroy]
  end

  resources :homes
  resources :genres
  	
    get "art" => "posts#art"
    get "craft" => "posts#craft"
    get "life" => "posts#life"
    get "motion" => "posts#motion"
    get "study" => "posts#study"
    get "other" => "posts#other"
    get "genres_index" => "posts#genre_index"
    get "random" => "posts#random"

  	get "/" => "homes#top"
  	post "search" => "posts#search"

    root to: 'homes#top'
end
