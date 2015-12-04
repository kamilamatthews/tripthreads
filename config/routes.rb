Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  root 'welcome#index'
  resources 'style_surveys'
  namespace :api, defaults: {format: :json} do
    resources :sessions, only: :create
    resources :style_surveys
    # resources :sessions, only: :create, format: false
  end


end
