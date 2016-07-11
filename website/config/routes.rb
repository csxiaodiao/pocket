Rails.application.routes.draw do





  devise_for :admin, controllers: {
    sessions: 'admin/sessions',
    passwords: 'admin/passwords'
  }, only: [:sessions, :password]


  namespace :admin do
    root to: 'main#home', as: :root

    resources :tags
  end

  scope module: :user do
    root to: 'main#home'
  end


end
