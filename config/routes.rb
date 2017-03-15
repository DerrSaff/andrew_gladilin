# frozen_string_literal: true
Rails.application.routes.draw do
  get '/about' => 'application#index', as: :about
  root to: 'application#index'
end
