Rails.application.routes.draw do

    devise_for :users
    root "projects#index"

    resources :projects, only: [:index, :new, :create, :show]  do
    resources :tasks, only: [:new, :create]
  end

end




