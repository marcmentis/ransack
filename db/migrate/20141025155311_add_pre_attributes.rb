class AddPreAttributes < ActiveRecord::Migration
  def change
  	add_column :weekly_notes, :pre_date_yesno, :string
  	add_column :weekly_notes, :pre_date_no_why, :text
  	add_column :weekly_notes, :date_pre, :date
  end
end
