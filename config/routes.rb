Rails.application.routes.draw do
  resources :posts
  root :to => 'posts#index'
  get '/about' => 'application#index', as: :about
  get '/achievements' => 'application#achievements'
end
