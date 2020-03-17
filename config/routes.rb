Rails.application.routes.draw do

  get 'flights', to: "flights#index"
  post "flights", to: "flights#handle_form"

end
