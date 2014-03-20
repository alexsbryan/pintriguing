Pintriguing::Application.routes.draw do
  devise_for :users
  root to: "boards#index"

  resources :users, :only=>[:index,:show] do
    resources :boards
  end
end
