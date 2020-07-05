Rails.application.routes.draw do
  root "application#home"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users, :controllers => {registrations: 'registrations', omniauth_callbacks: 'callbacks'} 
  get '/auth/facebook/callback'
  devise_scope :user do 
    get 'login', to: "devise/sessions#new"
    get 'signup', to: "devise/registrations#new"
    end
  end
