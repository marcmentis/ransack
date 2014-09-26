class AddWardToPats < ActiveRecord::Migration
  def change
  	add_column :pats, :ward, :string
  	remove_column :pats, :for_select_id
  end
end
