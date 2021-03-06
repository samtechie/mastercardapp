Rails.application.routes.draw do
  resources :updates
  resources :grades
  resources :activities
  get 'sessions/new'

  root 'static_pages#home'

  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :activities,          only: [:create, :destroy]




  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
