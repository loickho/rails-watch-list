Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # get 'lists', to: 'lists#index'

  root 'lists#index'
  resources :lists, only: [:index, :show, :new, :create] do
    resources :bookmarks, only: [:new, :create, :destroy]
  end
end
