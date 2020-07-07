Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  resources :phones
  match 'check_number_validity', to: 'phones#check_number_validity', via: [:post]
  match 'success_page', to: 'phones#success_page', via: [:get]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
