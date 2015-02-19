Rails.application.routes.draw do

    devise_for :users
    root "projects#index"

    resources :projects   do
      resources :tasks 
      resources :favourites
      resources :categorizations
      resources :likes, only: [:create]   
  end

end




