Rails.application.routes.draw do
  devise_for :users
  resources :posts
  root :to => 'posts#index'

  devise_scope :user do
    get "/sign_up" => "devise/registrations#new", as: :sign_up
    get "/sign_in" => "devise/sessions#new", as: :sign_in
    get "/sign_out" => "devise/sessions#destroy", as: :sign_out
    get "/settings" => "devise/registrations#edit", as: :settings
  end
  
  get '/about' => 'application#index', as: :about
  get '/achievements' => 'application#achievements'
end
