Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # index
  get '/tasks', to: 'tasks#index'
  # new
  get '/tasks/new', to: 'tasks#new'
  # create
  post '/tasks', to: 'tasks#create'
  # edit
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  # update
  patch '/tasks/:id', to: 'tasks#update'
  # delete
  delete '/tasks/:id', to: 'tasks#destroy'
  # show
  get '/tasks/:id', to: 'tasks#show', as: :task
end
