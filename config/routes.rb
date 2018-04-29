Rails.application.routes.draw do
  root to: 'home#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #namespace :admin do
  #  resources :unko
  #end

  devise_for :admins, :controllers => {
    :registrations => 'admins/registrations',
    :sessions => 'admins/sessions'
   }
end
