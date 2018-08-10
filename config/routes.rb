Rails.application.routes.draw do

  root to: 'home#top'


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

  # コンタクトフォーム用
  get 'contact', to: 'contact#new'
  post 'contact', to: 'contact#back_new'
  post 'contact/confirm' => 'contact#confirm'
  post 'contact/thanks' => 'contact#thanks'
  # テスト用ルーティング
  get 'contact/thanks' => 'contact#thanksTest'

end
