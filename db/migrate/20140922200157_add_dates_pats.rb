class AddDatesPats < ActiveRecord::Migration
  def change
  	add_column :pats, :doa, :date
  	add_column :pats, :dob, :date
  	add_column :pats, :dod, :date
  end
end
