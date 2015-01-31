Rails.application.routes.draw do
  resources :days do
    resources :day_tasks
  end

  root "days#index"
end
