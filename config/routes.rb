Rails.application.routes.draw do
  get "/display", to: "pages#display"
  get "/contacts", to: "pages#contacts"
end
