# frozen_string_literal: true

Rails.application.routes.draw do

  get '/frontend', to: 'frontends#frontend'

end
