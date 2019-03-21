Rails.application.routes.draw do
  devise_for :users
  resources :projects
  resources :projects, only: [] do
    post 'add_person'
  end
  resources :people
  resources :assignations, only: [:index, :destroy]
  root 'people#index'
end
