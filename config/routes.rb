# frozen_string_literal: true

Rails.application.routes.draw do
  root 'home#index'

  resources :books
  resources :book_cards
  resources :book_issues
  resources :book_returns
  resources :libraries
  resources :readers
  resources :types
end
