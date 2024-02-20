Rails.application.routes.draw do
  get "/tasks", to: "tasks#index"
  get  get "/tasks/:id", to: "tasks#show", as: :task
end
