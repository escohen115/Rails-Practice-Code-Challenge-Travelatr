Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :bloggers, only: [:index, :new, :create, :show]
  resources :destinations, only: [:show, :index]
  resources :posts, only: [:index, :show, :new, :create, :edit, :update]

  patch '/like/:id', to: 'posts#like', as: 'like'

end
