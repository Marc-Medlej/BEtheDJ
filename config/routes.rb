Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :venues, only: [:index, :show]

  resources :events, only: [:show, :new, :create] do
    resources :requests, only: [ :index ]
    resources :tracks, only: [:show] do
      resources :requests, only: [ :create]
    end
  end
  
  resources :event_tracks, only: [:update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

