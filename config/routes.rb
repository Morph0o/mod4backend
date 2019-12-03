Rails.application.routes.draw do
  resources :users
  resources :monsters
  resources :monstermoves
  resources :usermoves
  resources :moves
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
