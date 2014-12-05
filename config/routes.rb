Sklad::Application.routes.draw do
  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
  resources :products
  resources :options do
    resources :option_values
  end
  resources :import
end