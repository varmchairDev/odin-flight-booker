Rails.application.routes.draw do

  get 'bookings/new'
  post 'bookings/new'
  get '/flights', to: "flights#index"
  post "/flights", to: "flights#handle_form"

end
