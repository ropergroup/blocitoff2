Rails.application.routes.draw do
  devise_for :users

  #controllers: { registrations: "registrations" }
  get 'welcome/about'
  get 'welcome/tasks'
  get 'welcome/index'

  resources :users

  root 'users#show'

  get 'users/show'

resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
