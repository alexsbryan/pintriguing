Pintriguing::Application.routes.draw do
  devise_for :users

  resources :root, :only=>[:index]
  root to: "root#index"

  resources :users, :only=>[:index,:show] do
    resources :boards
  end

  resources :pins

  resources :categories, :only =>[:show]
end
