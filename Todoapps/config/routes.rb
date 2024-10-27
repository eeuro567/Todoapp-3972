Rails.application.routes.draw do
  resources :categories do
    resources :tasks, only: [:index, :new, :create]
  end
  resources :tasks do
    member do
      get 'toggle_status'
    end
    collection do
      get 'complete'
      get 'incomplete'
    end
  end

  root 'categories#index'
end
