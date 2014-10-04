class WeeklyNote < ActiveRecord::Base
	belongs_to :pats

	@test = "This is from the model"
end
 