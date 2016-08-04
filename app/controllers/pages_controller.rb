class PagesController < ApplicationController

def display
  @display = Contact.first
end

def contacts
  if current_user
  @contacts = current_user.contacts
else
  flash[:danger] = "Not allowed"
  redirect_to '/login'
end
end

def new
end

def create
  contact = Contact.new(first_name: params[:first_name], last_name: params[:last_name], phone: params[:phone], age: params[:age],user_id: 1)
  contact.save
  redirect_to '/contacts'
end

def form_result
  @contacts = params[:contact]
  @phone = params[:phone_no]
end

def all_johns
  @contacts = Contact.all
end

end