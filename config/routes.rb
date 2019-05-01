Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :characters
      resources :klasses
      resources :users
      resources :races, only: [:index]
      resources :character_proficiencies, only: [:index, :create]
      resources :proficiencies, only: [:index]

      post "/login", to: "auth#login"
      get "/auto_login", to: "auth#get_current_user"
    end
  end
end
