Rails.application.routes.draw do
 get "about", to: "about#index"
 root to: "main#index"

#  password and email update
 get "update_profile", to: "update#edit"
 patch "update_profile", to: "update#update"

#  forgot password
 get "forget/password", to: "forget_password#edit"
 post "forget/password", to: "forget_password#create"
 get "forget/password/edit", to: "forget_password#new"
 get "forget/password/edit", to: "forget_password#update"

#  registration
 get "sign_up", to: "registration#new"
 post "sign_up", to: "registration#create"
 delete "logout", to: "session#destroy"

#  Sign in
get "sign_in", to: "session#new"
post "sign_in", to: "session#create"
end
