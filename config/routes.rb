Rails.application.routes.draw do
  
  devise_for :users, controllers: {
    registrations: 'registrations'
  } 

  root 'dishes#new'
  
  resources :aromas
  resources :wines
  resources :ingredients
  resources :dishes
  resources :sauces
  resources :sides
  resources :api 
end
