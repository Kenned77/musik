Rails.application.routes.draw do
  resources :genres
  resources :artists
  resources :songs
  resources :song_links
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'application#index'
end
