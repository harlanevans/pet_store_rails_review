Rails.application.routes.draw do
  root "pets#index"
  resources :pets 

  get "/pets", to: "pets#index", as: "pet_path_and_beyond"
end
