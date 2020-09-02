Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/auth/spotify/callback', to: 'users#spotify'

  resources :venues, only: [:index, :show] do
    resources :venue_tracks_playeds, only: [ :create ]
    resources :events, only: [ :new, :create]
  end
  resources :events, only: [:show ] do
    resources :requests, only: [ :index ]
    resources :tracks, only: [:show] do
      resources :requests, only: [ :create]

  end
end

  resources :event_tracks, only: [:update]
  resources :requests, only: [ :destroy ]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

