Rails.application.routes.draw do
  ### EDUCATION
  get "/educations" => "educations#index"
  get "/educations/:id" => "educations#show"
  post "/educations" => "educations#create"
  patch "/educations/:id" => "educations#update"
  delete "/educations" => "educations#destroy"
end
