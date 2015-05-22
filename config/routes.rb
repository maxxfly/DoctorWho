Rails.application.routes.draw do

  resources :doctors 
  resources :professions do
    resources :doctors
  end

  root "doctors#index"
end
