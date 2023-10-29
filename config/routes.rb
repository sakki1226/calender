Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'families/sessions', registrations: 'registrations' }
  root to: 'blogs#index'
  resources :blogs, params: :date, only: [:show]
  resources :incomes
  resources :expenses
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
