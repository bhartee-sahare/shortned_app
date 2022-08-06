Rails.application.routes.draw do
  # get 'spa/index'
  # get 'pages/index'
  # get 'app', to: 'spa#index'
  # get 'app/*path', to: 'spa#index'

  root 'page#index'
  resources :urls
  get ':short_path', to: 'redirect#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
