Rails.application.routes.draw do

  # Root
  root :to => 'home#home'

  # Engines
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  # Resources
  # resources :users

end
