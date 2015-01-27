Rails.application.routes.draw do

    devise_for :users
    root "projects#index"

    resources :projects, only: [:index, :new, :create, :show, :edit, :update, :destroy]  do
    resources :tasks, only: [:new, :create, :edit, :update, :destroy]
  end

end




