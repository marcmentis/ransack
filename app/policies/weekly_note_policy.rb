class WeeklyNotePolicy < ApplicationPolicy
	def presentation?
		# Get
		new_with_pat?
	end
	def meetings?
		# Get 
		new_with_pat?
	end

	def edit?
		# Edit weekly_note from _to_do.html.erb
		new_with_pat?
	end

	def new_with_pat?
		# Create New Weekly Note from _to_do.html.erb
		# byebug
		# user.superadmin?
		true
	end

	def tracker_patnotes?
		# Get meeting notes for patient on Meeting Tracker window
		meetingtracker?
	end

	def meetingtracker?
		# Get Meeting Tracker Ransack form
		# true
		user.superadmin?
	end
end
