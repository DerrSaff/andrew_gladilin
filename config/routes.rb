# frozen_string_literal: true
Rails.application.routes.draw do
  get '/about' => 'application#index', as: :about
  get '/bookmarks' => 'application#bookmarks', as: :bookmarks
  get '/databases' => 'application#databases', as: :databases
  get '/languages' => 'application#languages', as: :languages
  get '/books' => 'application#books', as: :books
  root to: 'application#index'
end
