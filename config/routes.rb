Rails.application.routes.draw do
  root "listings#index"
  get "/listings", to: "listings#index"
end
