Rails.application.routes.draw do
  resources :skills
  resources :students

  ### EDUCATION
  get "/educations" => "educations#index"
  get "/educations/:id" => "educations#show"
  post "/educations" => "educations#create"
  patch "/educations/:id" => "educations#update"
  delete "/educations/:id" => "educations#destroy"

  ### SESSIONS
  post "/sessions" => "sessions#create"
end
