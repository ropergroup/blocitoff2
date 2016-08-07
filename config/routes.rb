Rails.application.routes.draw do
  devise_for :users

  #controllers: { registrations: "registrations" }
  get 'welcome/about'
  get 'welcome/tasks'
  get 'welcome/index'

  root 'users#show'

  
  resources :users, only: [:show] do
    resources :items, only: [:create, :destroy]
  end
end
