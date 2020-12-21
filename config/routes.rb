# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'pages#index'
  get '/faq', to: 'pages#faq'
end
