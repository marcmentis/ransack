class Facility < ActiveRecord::Base
	has_many :pats
	has_many :for_selects
	has_many :users
end
