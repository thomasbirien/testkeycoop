Rails.application.routes.draw do
  resources :announcements, only:[:index, :create] do
    resources :bills, only:[:create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
