Rails.application.routes.draw do
  resources :institutions
  resources :clients_has_employeurs
  resources :employeurs
  resources :clients_etats_civils
  resources :etats_civils
  resources :clients_has_enfants
  resources :enfants
  resources :clients_has_conjoints
  resources :clients
  resources :adresses
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
