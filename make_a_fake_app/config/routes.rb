Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :fakers, only: [:create, :index, :show]
    end
  end
  resources :fakers, only: [:create, :index, :show]
end
