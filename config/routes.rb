Pintriguing::Application.routes.draw do
  devise_for :users

  namespace :api, :defaults => { :format => :json } do
    resources :boards
    resources :pins
    resources :pins_on_boards
    resources :users
  end

  root to: "root#root"

  ##########Routes for a working Rails app
  resources :root, :only=>[:index]
  #root to: "root#index"

  resources :users, :only=>[:index,:show] do
    resources :boards
  end

  resources :pins

  resources :categories, :only =>[:show]
end
