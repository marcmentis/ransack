class AddFacilityIdToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :facility_id, :integer
  	add_index :users, :facility_id
  	remove_column :users, :facility
  end
end
