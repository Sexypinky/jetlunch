Rails.application.routes.draw do

  devise_for :user

  root "static_pages#index"

  namespace :dashboard do
    get "pages", to: 'pages#dashboard'
    get "myorders", to: 'orders#myorders'
    get "main_course", to: 'orders#main_course'
    get "drink", to: 'orders#drink'
    get "addfirst", to: 'orders#addfirst'
    get "addmain", to: 'orders#addmain'
    get "finish_order", to: 'orders#finish_order'
    resources :menus
    resources :orders
  end

  namespace :admin do
    get "users", to: 'panel#allusers'
    get "orders/week", to: 'orders#week'
    resources :menus
    resources :orders
  end

  namespace :api do
    resources :orders
  end

end