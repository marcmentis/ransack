module ApplicationHelper
	# Create a 'current_user' method
	def current_user
		# User.find(session[:current_user_id])
		User.where('authen_id == ?', session[:authen_id])
	end
end
