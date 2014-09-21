class Pat < ActiveRecord::Base
	belongs_to :facility
	has_many :for_selects, through: :facilities

	accepts_nested_attributes_for :for_selects
end
