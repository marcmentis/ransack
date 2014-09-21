class ChangeColumnToString < ActiveRecord::Migration
  def change
  	remove_column :for_selects, :option_order
  	add_column :for_selects, :option_order, :integer
  end
end
