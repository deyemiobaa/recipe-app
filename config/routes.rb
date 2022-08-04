Rails.application.routes.draw do
  devise_for :users
  root 'users#index'

  resources :users
  resources :foods, only: [:index, :new, :create, :destroy]
  resources :recipes do
    resources :recipe_foods, only: [:create, :destroy]
    get 'ingredients', to: 'recipe_foods#new'
  end
end
