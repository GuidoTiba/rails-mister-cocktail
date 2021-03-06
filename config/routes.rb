Rails.application.routes.draw do
  get 'reviews/new'
  get 'reviews/create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "cocktails#index"
  resources :cocktails, only: [:new, :create, :show, :index] do
    resources :doses, only: [:new, :create]
    resources :reviews, only: [:new, :create]
  end
  resources :doses, only: :destroy
end
