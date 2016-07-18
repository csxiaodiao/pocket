Rails.application.routes.draw do


  devise_for :user, controllers: {
    sessions: 'wx/sessions',
    omniauth_callbacks: 'wx/omniauth_callbacks'
  }, only: [:sessions, :omniauth_callbacks]

  devise_for :admin, controllers: {
    sessions: 'admin/sessions',
    passwords: 'admin/passwords'
  }, only: [:sessions, :password]


  namespace :admin do
    root to: 'main#home', as: :root

    resources :tags
  end

  namespace :wx do
    resource :pocket, only: [:show, :create]
  end

  scope module: :user do
    root to: 'main#home'
  end


end
