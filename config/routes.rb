Rails.application.routes.draw do
  get 'mains/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :mains
end
