Rails.application.routes.draw do
  resources :costos_fijos
  resources :tarifa_hora_logisticas
  resources :costos_marginals
  resources :tarifa_diferidas
  resources :factores_fluctuantes
  resources :trucks
  devise_for :users
  resources :camions
  root to: redirect('/trucks')
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
