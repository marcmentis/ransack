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
		true
	end
end
