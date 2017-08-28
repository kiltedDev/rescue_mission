Rails.application.routes.draw do
  resources :questions, only: [:index, :create, :new, :edit, :show, :update]

  root 'questions#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
