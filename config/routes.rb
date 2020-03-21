Rails.application.routes.draw do

  post 'bookings/new'
  post "bookings", to: "bookings#create"
  get 'bookings/:id', to: "bookings#show"
  get '/flights', to: "flights#index"
  post "/flights", to: "flights#handle_form"

end
