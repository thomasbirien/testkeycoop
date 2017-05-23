Rails.application.routes.draw do
  resources :announcements, only:[:index, :create, :edit, :update] do
    resources :bills, only:[:create, :show]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
