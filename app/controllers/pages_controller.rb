class PagesController < ApplicationController

def display
  @display = Contact.first
end

def contacts
  @contacts = Contact.all
end

def add_form
end

def form_result
  @contacts = params[:contact]
  @phone = params[:phone_no]
end

def all_johns
  @contacts = Contact.all
end

end