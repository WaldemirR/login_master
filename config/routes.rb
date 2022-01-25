 # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
 
  resources :quilometragems
get "about", to: "about#index"

get "password", to:"passwords#edit", as: :edit_password
patch "password", to:"passwords#update"

get "sign_up", to:"registrations#new"
post "sign_up", to:"registrations#create"

post "km", to:"registrations#create"

get "sign_in", to:"sessions#new"
post "sign_in", to:"sessions#create"

delete "logout", to:"sessions#destroy"

root to:"main#index"
end
