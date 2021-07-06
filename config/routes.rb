Rails.application.routes.draw do
  get 'users/:id/home', to: 'users#home'

  get 'users/new'

  get 'users/create'

  get 'sessions/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
