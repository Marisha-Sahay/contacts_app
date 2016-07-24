Rails.application.routes.draw do
  get "/display", to: "pages#display"
  get "/contacts", to: "pages#contacts"
  get "/add_form", to: "pages#add_form"
  post "form_result", to: "pages#form_result"
end
