Rails.application.routes.draw do
  root to: 'entries#index'

  resources :entries, only: [:index,:show,:new,:edit]
end
