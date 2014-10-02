class Pat < ActiveRecord::Base
	belongs_to :facility
	has_many :weekly_notes
	accepts_nested_attributes_for :weekly_notes

end
