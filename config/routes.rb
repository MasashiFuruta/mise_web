Rails.application.routes.draw do

  root to: 'home#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_for :admins, path: :admin, :controllers => {
    :registrations => 'admin/registrations',
    :sessions => 'admin/sessions',
    :passwords => 'admin/passwords'
   }


  namespace :admin do
    root to: 'home#top'
    get 'test', to: 'home#test'

    resources :clients do
      resources :lessons
    end
  end

  get 'test', to: 'home#test'

end
