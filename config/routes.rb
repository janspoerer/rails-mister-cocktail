Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :ingredients, only: [:create]
    resources :doses, only: [ :new, :create ]
  end
  resources :doses, only: [ :destroy ]
end
