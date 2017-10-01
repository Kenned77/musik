Rails.application.routes.draw do

  get 'song_genres/index'

  get 'song_genres/new'

  get 'song_genres/edit'

  get 'song_genres/show'

  resources :song_artists
  resources :genres
  resources :artists
  resources :songs
  resources :song_links
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'application#index'
end
