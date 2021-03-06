Rails.application.routes.draw do
  # get 'dashboard/home'
  root to: 'dashboards#home'
  namespace :api do
    namespace :v1 do
      resources :visits
    end
  end
  namespace :api do
    namespace :v1 do
      resources :gardens
    end
  end
  namespace :api do
    namespace :v1 do
      resources :users
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
