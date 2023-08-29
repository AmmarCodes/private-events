Rails.application.routes.draw do
  post 'events/:event_id/attend', to: 'attendances#attend', as: 'attending'
  resources :events
  devise_for :users
  root to: 'events#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:show]
end
