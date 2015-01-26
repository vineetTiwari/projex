Rails.application.routes.draw do

    devise_for :users
    root "projects#index"

    resources :projects, [:index, :new, :create] do
    resources :tasks, [:new, :create]
  end
end


