Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :tasks

  # # read all
  # get "tasks", to: "tasks#index"



  # # add task
  # get "tasks/new", to: "tasks#new"
  # post "tasks", to: "tasks#create"

  # # read one
  # get "tasks/:id", to: "tasks#show", as: :task

  # # update a task
  # get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  # patch "tasks/:id", to: "tasks#update"

  # # remode a task
  # delete "tasks/:id", to: "tasks#destroy"


end
