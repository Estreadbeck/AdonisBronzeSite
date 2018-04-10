Rails.application.routes.draw do
  devise_for :users, path: '', path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  get 'topics/index'

  get 'topics/show'

  resources :projects
  resources :images
  resources :topics

  get 'about-us', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'employment', to: 'pages#employment'
  get 'project/:id', to: 'projects#show', as: 'project_show'

  root to: 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
