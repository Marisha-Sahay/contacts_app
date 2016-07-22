class PagesController < ApplicationController

def display
  @display = Contact.first
end

def contacts
  @contacts = Contact.all
end

end
