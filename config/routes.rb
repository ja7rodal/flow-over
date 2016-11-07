Rails.application.routes.draw do
  devise_for :users
  root 'questions#index'
  resources :questions do
      resources :comments, only: [:create]
      resource :voqte, only: [:create, :destroy]
    end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
