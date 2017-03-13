# frozen_string_literal: true
Rails.application.routes.draw do
  devise_for :users
  resources :posts
  resources :comments, only: [:create, :update, :destroy]
  root to: 'posts#index'
  resources :likes, only: [:create, :destroy]
  resources :reports, only: [:index, :new, :create]
  devise_scope :user do
    get '/sign_up' => 'devise/registrations#new', as: :sign_up
    get '/sign_in' => 'devise/sessions#new', as: :sign_in
    get '/sign_out' => 'devise/sessions#destroy', as: :sign_out
    get '/settings' => 'devise/registrations#edit', as: :settings
  end

  get '/report' => 'application#report', as: :report
  get '/about' => 'application#index', as: :about
end
