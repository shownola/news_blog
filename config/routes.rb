Rails.application.routes.draw do


  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout'}
  #devise_for :users, :controllers  => {:registrations => 'registrations'}
  # resources :users, except: [:create]
  #post 'create_user' => 'users#create', as: :create_user
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'home#index'
  resources :articles

  get 'users',  to: 'users#index'
end
