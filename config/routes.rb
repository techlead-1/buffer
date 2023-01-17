Rails.application.routes.draw do
 get "about", to: "about#index"
 root to: "main#index"

#  registration
 get "sign_up", to: "registration#new"
 post "sign_up", to: "registration#create"
end
