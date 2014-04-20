Lineman::Application.routes.draw do

  root to: "welcome#index"
  devise_for :users

  resources :users
  resources :events
  resources :rooms
  resources :lines

end
