Rails.application.routes.draw do
  
  root 'access#menu'

  get 'admin', :to => 'access#menu'
  get 'access/menu'
  get 'access/login'
  post 'access/attempt_login'
  get 'access/logout'

  resources :admin_users do
     member do
      get :delete
     end
  end

  resources :questions do
     member do
      get :delete
     end
  end

end
