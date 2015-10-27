class PagesController < ApplicationController
  def about
  	
  end

  def welcome
	@posts = Post.all

  end

  def sign_up
  	@user = User.new

  end
end
