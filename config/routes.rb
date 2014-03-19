Pintriguing::Application.routes.draw do
  resources :users, :only => [:new, :create, :show, :edit, :update]
  resources :sessions, :only => [:new, :create, :destroy]

  root to: "users#show"
end
