class Accessauditlog < ActiveRecord::Base
	self.table_name 'aurora.accessauditlog' 

	# establish_connection "#{Rails.env}"
end