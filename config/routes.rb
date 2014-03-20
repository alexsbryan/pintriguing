Pintriguing::Application.routes.draw do
  devise_for :users
  root to: "boards#index"
end
