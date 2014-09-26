class AddFacilityForeignKeys < ActiveRecord::Migration
  def change
  	add_column :for_selects, :facility_id, :integer
  	add_column :pats, :facility_id, :integer
  	add_index :for_selects, :facility_id
  	add_index :pats, :facility_id
  end
end
