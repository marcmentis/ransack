class AddFacIdForSelects < ActiveRecord::Migration
  def change
  	add_column :for_selects, :facility_id, :integer
  end
end
