Rails.application.routes.draw do
  resources :trucks
  devise_for :users
  resources :camions
  root to: redirect('/trucks')
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
