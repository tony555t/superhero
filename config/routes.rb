Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
   resoures :heroes, only: [:index, :show]
   resoures :powers, only: [:index, :show, :update]
   resoures :hero_powers, only: [:index, :create]

end
