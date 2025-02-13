Rails.application.routes.draw do
  scope "(:locale)", :locale => /ru|en|tm/ do
    mount RailsAdmin::Engine => '/rails_admin', as: 'rails_admin'
    devise_for :users
    get 'home/index'
    # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
    root "home#index"

    resources :products do
      resources :productcomments
      resources :articles
    end
    resources :productcomments
    resources :categories
    resources :backends
    resources :check
    resources :articles do
      resources :comments
    end
    resources :contacts
    # Defines the root path route ("/")
    # root "articles#index"
  end
end
