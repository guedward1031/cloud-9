Rails.application.routes.draw do
<<<<<<< HEAD
<<<<<<< HEAD
  devise_for :users
=======
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
>>>>>>> b9a60620fc602b1f8b9675e21516663465dae051
=======
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
>>>>>>> b9a60620fc602b1f8b9675e21516663465dae051
  resources :portfolios, except: [:show]
  get 'angular-items', to: 'portfolios#angular'
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :blogs do
    member do
      get :toggle_status
    end
  end
  
  root to: 'pages#home'
end
