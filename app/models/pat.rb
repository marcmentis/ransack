class Pat < ActiveRecord::Base
	belongs_to :facility
	has_many :weekly_notes

end
