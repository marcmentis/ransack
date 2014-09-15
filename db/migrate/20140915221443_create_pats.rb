class CreatePats < ActiveRecord::Migration
  def change
    create_table :pats do |t|
      t.string :firstname
      t.string :lastname
      t.integer :number

      t.timestamps
    end
  end
end
