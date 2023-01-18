Rails.application.routes.draw do
 get "about", to: "about#index"
 root to: "main#index"

#  registration
 get "sign_up", to: "registration#new"
 post "sign_up", to: "registration#create"
 delete "logout", to: "session#destroy"

#  Sign in
get "sign_in", to: "session#new"
post "sign_in", to: "session#create"
end
