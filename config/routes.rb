Lineman::Application.routes.draw do

  root to: "events#index"

  devise_for :users
  devise_scope :user do
    post '/sessions/user', to: 'devise/sessions#create'
  end

  resources :users
  resources :events
  resources :rooms
  resources :sessions

  get '/e/:shortcode', to: 'events#shortcode', as: 'shortcode'

end
