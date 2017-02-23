Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/companies", to: 'companies#index'
  get "/companies/:id", to: 'companies#show'
  get "/companies/new", to: 'companies#new'
  post "/companies", to: 'companies#create'
end
