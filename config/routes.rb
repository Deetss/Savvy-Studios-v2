Rails.application.routes.draw do
  get 'contact', to: "contact#index"
  patch 'contact/new'
  get 'about_me', to: "about_me#index"
  resources :galleries do
    delete '/image/:id', to: "gallery_images#destroy", as: 'remove_image'
    patch '/' , to: "gallery_images#sort_images", as: 'sort_images'
  end
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/home/index"
  root to: "home#index"
end
