Rails.application.routes.draw do
 get 'home/about' => 'homes#about'
 get 'homes/about' => 'homes#about', as: 'about'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "homes#top"
   resources :books, only: [:create, :index, :show, :update, :destroy, :edit]
   resources :users, only: [:show, :edit, :index, :update]
end
