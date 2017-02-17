Rails.application.routes.draw do
  get '/' => 'home#index'

  devise_for :users, :controllers => { :registrations => "registrations" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users do
    resources :images
  end

  resources :images do
    resources :comments
  end
end
