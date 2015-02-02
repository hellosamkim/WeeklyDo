Rails.application.routes.draw do

  resources :days do
    resources :day_tasks do
      member do
      patch :finished
      end
    end
  end

  root "days#index"
end
