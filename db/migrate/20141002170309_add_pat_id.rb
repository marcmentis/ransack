class AddPatId < ActiveRecord::Migration
  def change
  	add_column :weekly_notes, :pat_id, :integer
  	add_index :weekly_notes, :pat_id
  end
end
