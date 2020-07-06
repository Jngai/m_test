Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  resources :phones
  match 'check_number_validity', to: 'phones#check_number_validity', via: [:post]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
