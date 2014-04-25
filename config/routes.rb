Lineman::Application.routes.draw do

  root to: "events#index"
  devise_for :users

  resources :users
  resources :events
  resources :rooms
  resources :lines

  get '/e/:shortcode', to: 'events#shortcode', as: 'shortcode'

end
