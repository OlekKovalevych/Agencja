# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  resources :users, except: %i[new create]
  resources :lokals do
    put :book, on: :member
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'lokals#index'
end
