Rails.application.routes.draw do
  resources :students, only: :index
  get '/students/:id', to: 'students#show', as: 'student'
  resources :posts, only: [:index, :new, :create]
end
