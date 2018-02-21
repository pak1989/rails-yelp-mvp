Rails.application.routes.draw do
  # get 'restaurant/index'

  # get 'restaurant/show'

  # get 'restaurant/edit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'restaurants#index'

  # resources :restaurants

  resources :restaurants do
    resources :reviews, only: [ :create, :new ]
  end
  get 'reviews', to: 'reviews#index'
  # post '/restaurants/:id/reviews', to: 'reviews#create'
  # resources :reviews, only: [ :new, :create ]
end
