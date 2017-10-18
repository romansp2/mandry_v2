Rails.application.routes.draw do
  get 'user/new'

  root 'main_page#home'
  get 'signup' => 'user#new'
  get 'about' => 'main_page#about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
