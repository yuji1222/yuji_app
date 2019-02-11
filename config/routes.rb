Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
  authenticated :user do
    root 'boards#index', as: :authenticated_root
  end

  unauthenticated do
    root 'devise/sessions#new', as: :unauthenticated_root
  end
end
  resources :users, :only => [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html'
  resources :boards
  resources :comments, only: %i[create destroy]
  resources :posts, only: %i[create destroy]
  
end
