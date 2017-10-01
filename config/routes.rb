Rails.application.routes.draw do
  get 'song_links/index'

  get 'song_links/new'

  get 'song_links/edit'

  get 'song_links/show'

  resources :genres
  resources :artists
  resources :songs
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'application#index'
end
