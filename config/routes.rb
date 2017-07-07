Rails.application.routes.draw do

  get 'timeslots/newBulk'

  root 'pages#index'

  devise_scope :user do 
    root to: 'static_pages#home'
    match '/sessions/user', to: 'devise/sessions#create', via: :post
  end
  
 


  devise_for :users

  resources :advisors
  resources :sessions
  resources :timeslots
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
