require 'em-websocket'

class SessionsController < ApplicationController
  def new
  end

def create
  if user = User.authenticate(params[:name], params[:password])
    session[:user_id] = user.id


    redirect_to root_url
  else
    redirect_to login_url, :alert => "invalid user/password combination"
  end
end

def destroy
  session[:user_id] = nil
  redirect_to root_url, :notice => "Logged out"
end
  end
