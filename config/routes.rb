Rails.application.routes.draw do
  resources :skills
  resources :students
  resources :educations
  resources :capstones
  resources :experiences
  resources :skills

  ### SESSIONS
  post "/sessions" => "sessions#create"
end
