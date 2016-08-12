Rails.application.routes.draw do
  # get 'doses/new'

  # get 'doses/delete'

  # get 'cocktails/index'

  # get 'cocktails/show'

  # get 'cocktails/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  root to: 'cocktails#index'

    resources :cocktails do
      resources :doses, only: [:new, :create, :destroy]
    end

  mount Attachinary::Engine => "/attachinary"

end
