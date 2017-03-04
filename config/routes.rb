Rails.application.routes.draw do
  get 'students/index'

  get 'humans/index'

  get 'clients/index'
  
  resources :clients
  resources :humans
  resources :customers
  resources :students
  
  get 'customers/index'
  root 'customers#index'

  #devise_for :users
  #devise_for :users, controllers: { sessions: "users/sessions"}
  #oot to: "users#sign_in"
  #root to: "users#sign_up"
  devise_for :users
  devise_scope :user do
  authenticated :user do
    root :to => 'users#sign_up'
  end
  unauthenticated :user do
    root :to => 'devise/registrations#new', as: :unauthenticated_root
  end
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
