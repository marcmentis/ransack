class User < ActiveRecord::Base

	# Define instance methods to check for roles
	def superadmin?
		role == "superadmin"
	end
	
	def linedoctor?
		role == "lineDoctor"
	end
end
