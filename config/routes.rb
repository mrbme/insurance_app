Rails.application.routes.draw do
  resources :prospects
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'

  get 'page2' => "home#page2"
end
