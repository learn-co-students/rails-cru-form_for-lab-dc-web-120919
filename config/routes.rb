Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :artists
  resources :songs
  resources :genres

# Song routes
# get '/songs', to: "/songs#index", as: "songs"
# get '/songs/new', to: "/songs#new"
# get '/songs/:id', to: "/songs#show", as: "song"
# post '/songs', to: "/songs#create"
# get '/songs/:id/edit', to: "/songs#edit", as: "edit_songs"
# patch '/songs/:id', to: "/songs#update"
# delete '/songs/:id', to: "/songs#delete"




end
