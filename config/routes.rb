Rails.application.routes.draw do
  resources :questions, only: [:index, :create, :new, :edit, :show, :update] do
    resources :answers, only: [:index, :create, :new, :edit, :show, :update]
  end

  root 'questions#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
