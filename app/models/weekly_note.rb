class WeeklyNote < ActiveRecord::Base
	belongs_to :pat

	# Get all the Patients who have weekly notes from a given ward and date
	def self.all_done(params, chosen_date)
	    all_done = Pat.joins(:weekly_notes)
	                  .where(pats: {ward: params[:s_weekly_ward]})
	                  .where(weekly_notes: {meeting_date: chosen_date})
	                  .order(lastname: :asc)
	end

	# Get all Patients who do NOT have weekly notes from a given ward and date
	def self.all_to_do(params, all_done)
		# Create an array of Pat.id to use in .where IN in @all_to_do
	    not_these_ids = all_done.each.map{|p| p.id}

	    # Passing .where.not an empty array results in a nil result. 
	       # An empty string will give all those patients in the ward not in the array
	    not_these_ids.empty? ? not_these_ids = [""] : not_these_ids

		all_to_do = Pat.where(pats: {ward: params[:s_weekly_ward]})
                  .where.not(id: not_these_ids)
                  .order(lastname: :asc)	
	end

end
 