Rails.application.routes.draw do
  devise_for :users, class_name: "Account::User"
  root to: "home#index"
  namespace :fitness do
    resources :disciplines
  end
  namespace :account do
    resources :companies
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
