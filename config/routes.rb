Rails.application.routes.draw do
  root :to => 'application#index'
  get '/achievements' => 'application#achievements'
  get '/test' => 'application#test'
end
