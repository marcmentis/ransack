class StaticPagesController < ApplicationController
  def home
  	# Get 'request' and 'response' objects from Authentication system
  	@request = request
  	@response = response
  	# Artificially set session[:current_user_id]
  	# session[:current_user_id] = 1
  	session[:authen_id] = 'pgmdmjm'
  	# byebug
  end
end
