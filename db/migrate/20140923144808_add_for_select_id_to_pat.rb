class AddForSelectIdToPat < ActiveRecord::Migration
  def change
  	add_column :pats, :for_select_id, :integer
  end
end
