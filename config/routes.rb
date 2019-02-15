Rails.application.routes.draw do
  get 'likes/create'
  get 'likes/destroy'
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
  resources :boards do
    resources :likes, only: [:create, :destroy]
  end
  resources :comments, only: %i[create destroy]
  resources :posts, only: %i[create destroy]
  resources :home
  
end
