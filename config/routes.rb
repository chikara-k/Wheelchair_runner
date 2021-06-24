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
end
