Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "welcome#index"

  resources :goals, only: [:index, :new]
  resources :tasks, only: [:new]
  resources :objectives, only: [:new]
  resources :categories, only: :show, param: :name
end
