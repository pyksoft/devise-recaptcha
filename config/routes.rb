Rails.application.routes.draw do
  root "documents#index"
  resources :documents
  devise_for :users, controllers: { registrations: "registrations", passwords: "passwords", omniauth_callbacks: 'users/omniauth_callbacks' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
