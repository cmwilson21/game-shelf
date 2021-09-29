Rails.application.routes.draw do
  
  
  resources :games
  resources :consoles
  resources :players

  get '/me', to: 'players#show_current'

  get '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'



  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
