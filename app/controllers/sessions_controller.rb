class SessionsController < ApplicationController
def new
end

def create
user = User.find_by(email: params[:email])
if user && user.authenticate(params[:password])
  session[:user_id] = user.id
  flash[:success] = "Welcome!!!"
  redirect_to '/'
else
  flash[:danger] = "Invalid username or password"
  redirect_to '/login'
end
end

def destroy
  session[:user_id] = nil
  redirect_to '/login'
  flash[:message] = "Successfully logged out"
end


end
