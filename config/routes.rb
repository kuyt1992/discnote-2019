Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'toppages#index'
  
  get 'login', :to => 'sessions#new'
  post 'login', :to => 'sessions#create'
  delete 'logout', :to => 'sessions#destroy'
  # mount RailsDb::Engine => '/rails/db', :as => 'rails_db'
  
  get 'signup', :to => 'users#new'
  resources :users, :only => [:index, :show, :create, :new, :edit, :update] do
    member do
      get :followings
      get :followers
      get :likes
      get :clips
    end
  end
  
  resources :relationships, :only => [:create, :destroy]
  resources :artists, :only => [:index, :show]
  resources :albums, :only => [:index, :show] 
  resources :reviews
  post "reviews/:id/update" => "posts#update"
  resources :favorites, :only => [:create, :destroy]
  resources :clips, :only => [:create, :destroy]
end
