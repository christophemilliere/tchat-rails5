Rails.application.routes.draw do
  get 'sessions/create'

  get 'sessions/new'

get '/demo', to: 'messages#demo'

  root 'messages#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
