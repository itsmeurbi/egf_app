Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "welcome#index"

  get 'my_goals', to: 'goals#show'
end
