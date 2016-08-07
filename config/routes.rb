Rails.application.routes.draw do
  devise_for :users

  #controllers: { registrations: "registrations" }
  get 'welcome/about'
  get 'welcome/tasks'
  get 'welcome/index'

  root 'users#show'

devise_for :users
  resources :users do
    resources :items
  end
end
