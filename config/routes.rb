Rails.application.routes.draw do
  root "welcomes#index"
  devise_for :users
  resources :groups, only: [:index, :new, :create] do
    resources :payments, only: [:index, :new, :create]
  end
end
