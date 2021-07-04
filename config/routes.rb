Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }
  devise_scope :user do
    get 'users/sign_in' => 'users/sessions#create'
    get 'users/sign_out' => 'users/sessions#destroy'
    post 'users/guest_sign_in' => 'users/sessions#guest_sign_in'
  end

  root to: 'homes#top'
  resources :posts do
    resources :comments, only:[:create, :destroy]
    resource :likes, only: [:create, :destroy]
    get 'map_request', to: 'posts#map', as: 'map_request'
  end
  resources :mypages, only: [:show, :edit, :update] do
    member do
      get "confirm"
      patch "hide"
    end
  end
  resources :events, only:  [:index, :show, :create, :edit, :update, :destroy] do
    resources :event_users, only: [:create, :destroy]
  end
end
