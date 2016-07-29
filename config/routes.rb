Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  get 'welcome/index'

  get 'welcome/about'

  get 'welcome/tasks'

  root 'welcome#tasks'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
