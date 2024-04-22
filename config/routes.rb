Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cloths do
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:create]
  end
  root 'cloths#top'
  get 'cloths/top' => 'cloths#top'
  get 'cloths/about' => 'cloths#about'
end
