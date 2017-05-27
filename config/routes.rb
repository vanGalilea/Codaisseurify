Rails.application.routes.draw do
  resources :genres
  resources :artists do
    resources :albums do
      resources :songs
    end
  end

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
