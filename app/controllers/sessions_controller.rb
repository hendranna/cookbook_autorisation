class SessionsController < ApplicationController

  load_and_authorize_resource
  
  def new

  end

  def create
  	user = User.find_by_email(params[:email])

  	if user && user.authenticate(params[:password])

  		session[:user_id] = user.id
  		redirect_to root_url, notice: 'logged in'
  	else
  		flash.now.alert = 'invalid login credential!'
  		render 'new'
  	end
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to root_url, notice: 'deleted'
  end
end