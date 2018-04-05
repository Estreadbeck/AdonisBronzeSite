Rails.application.routes.draw do

  resources :projects
  get 'about-us', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'employment', to: 'pages#employment'
  get 'gallery', to: 'pages#gallery'

  root to: 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
