Rails.application.routes.draw do
  resources :students, only: [:index, :show, :new, :create]
  resources :coupons, only: [:index, :show, :new, :create]
end
