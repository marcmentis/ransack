class PatsFirstnameString < ActiveRecord::Migration
  def change
  	change_column :pats, :firstname, :string
  end
end
