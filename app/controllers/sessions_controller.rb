class SessionsController < ApplicationController

	def index
	end

 	def new

 	end

	def create
    	@watcher = Watcher.find_by(email: params[:email])
    	# @user == params[:username]
    	if @watcher and @watcher.password == params[:password]
	    	session[:watcher_id] = @watcher.id
	     	# log_in @watcher
	     	redirect_to welcome_path
		else
	     	flash[:notice] = "Incorrect user name, try again!"
	     	redirect_to welcome_path
	    end
 	end
 
	def delete  #log out
	    session[:watcher_id] = nil
	    flash[:notice] = "You are logged out. See you soon!"
	    redirect_to home_path
	end
end
