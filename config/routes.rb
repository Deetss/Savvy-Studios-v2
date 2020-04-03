Rails.application.routes.draw do
  resources :galleries do
    delete :images, to: "gallery_images#destroy"
    patch :images, to: "gallery_images#sort", action: :sort_images, as: 'sort_images'
  end
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/home/index"
  root to: "home#index"
end
