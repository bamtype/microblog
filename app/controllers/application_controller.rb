class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception



  	# def current_watcher
	  # if session[:watcher_id]
		 #   		Watcher.find(session[:watcher_id])
		 #   	else 
		 #   		nil
	  # end
	# include SessionHelper
  private
  	def current_watcher
  		session[:watcher_id] ? Watcher.find(session[:watcher_id]) : nil
  	end
  
end
	       

  
