class Pat < ActiveRecord::Base
	belongs_to :facility

	#accepts_nested_attributes_for :for_selects
end
