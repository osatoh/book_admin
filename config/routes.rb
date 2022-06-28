Rails.application.routes.draw do
  get 'profiles/show'
  get 'profiles/edit'
  get 'profiles/update'
  get 'profile/show'
  get 'profile/edit'
  get 'profile/update'
  resources :books, only: %i[show destroy]
  resources :publisher
  resource :profile, only: %i[show edit update]
end
