Rails.application.routes.draw do
  root to: 'pages#home'
  resources :gages
  resources :audios

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
