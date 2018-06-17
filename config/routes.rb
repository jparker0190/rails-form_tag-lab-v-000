Rails.application.routes.draw do
  resources :students, only: :index, :show, :new, :create
  get '/students/:id', to: 'students#show', as: 'student'
  resources :posts, only: [:index, :new, :create]
end
