Rails.application.routes.draw do
  resources :items, except: [:new, :edit]
  resources :lists, except: [:new, :edit]
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]

  resources :lists, except: [:new, :edit]
  # only: [:index, :show, :create, :update, :destroy]
end
