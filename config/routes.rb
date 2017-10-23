Rails.application.routes.draw do

  resources :users
  root 'main_page#home'
  get 'signup' => 'users#new', via: 'get'
  get 'about' => 'main_page#about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
