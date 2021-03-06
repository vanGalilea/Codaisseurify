Rails.application.routes.draw do
  resources :artists do
    resources :albums do
      delete "/destroy_all", to: "songs#destroy_all", as: :songs_destroy_all
      resources :songs  do
        resources :favourites, only: [:new]
      end
    end
  end
  resources :favourites, only: [:destroy]
  resources :profiles, only: [:new, :edit, :create, :update]
  resources :photos
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
