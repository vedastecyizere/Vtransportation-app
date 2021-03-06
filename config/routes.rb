Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html 

  get "/", to: 'companies#index'
  get "/companies", to: 'companies#index'
  get "/companies/new", to: 'companies#new'
  post "/companies/search", to: 'companies#search'
  post "/companies", to: 'companies#create'
  get "/companies/:id", to: 'companies#show'
  get "/companies/:id/edit", to: 'companies#edit'
  patch "/companies/:id", to: 'companies#update'
  delete "/companies/:id", to: 'companies#destroy'

  get "users", to: 'users#index'
  get "/signup", to: 'users#new'
  post "/users", to: 'users#create'

  get "/login", to: 'sessions#new'
  post "/login", to: 'sessions#create'
  delete "/logout", to: 'sessions#destroy'

  get "/images", to: 'images#index'


  get "/departures", to: 'departures#index'

  get "/homepages", to: 'homepages#index'

  get "/bookings/payment/:id", to: 'bookings#payment'
  get "/bookings/:id", to: 'bookings#show'
  post "/bookings", to: 'bookings#create'



  get "/information", to: 'information#index'

  get "/contacts", to: 'contacts#index'

  namespace :api do
    get "/companies", to: 'companies#index' 
    get "/companies/:id", to: 'companies#show'
  end 

end
