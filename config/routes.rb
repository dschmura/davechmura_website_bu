Rails.application.routes.draw do

  root to: 'pages#index'

  get '/privacy', to: 'pages#privacy'
  get '/contact', to: 'pages#contact'
  get '/about', to: 'pages#about'

  match '/resume', :to => 'resume#index', via: :get

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources 'feedbacks', only: [:create]

end
