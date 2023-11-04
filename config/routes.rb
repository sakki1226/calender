Rails.application.routes.draw do
  devise_for :users
  root to: 'blogs#index'
  get 'expenses_by_month', to: 'blogs#expenses_by_month', as: 'expenses_by_month'
  resources :blogs, params: :date, only: [:show]
  resources :incomes
  resources :expenses
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
