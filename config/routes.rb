Rails.application.routes.draw do
  resources :students
  resources :educations
  resources :capstones
  resources :experiences
  resources :skills

  ### SESSIONS
  post "/sessions" => "sessions#create"
end
