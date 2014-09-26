class RemoveForSelectAssociations < ActiveRecord::Migration
  def change
  	remove_column :for_selects, :facility_id
  end
end
