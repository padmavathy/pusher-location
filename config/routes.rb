Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'checkins/create'
  get 'walks/index'
  get 'walks/create'
  get 'walks/show'

  resources :walks do
    resources :checkins, only: :create
  end
  root 'walks#index'
end
