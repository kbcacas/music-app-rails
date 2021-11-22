Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :albums
  resources :songs
  resources :artists
  
  get root to: 'homepage#index'
end
