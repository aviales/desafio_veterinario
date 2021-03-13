Rails.application.routes.draw do
  resources :pet_histories
  resources :pets
  resources :clients
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
