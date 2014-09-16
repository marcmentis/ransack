class CreatePats < ActiveRecord::Migration
  def change
    create_table :pats do |t|
      t.string :firstname
      t.string :lastname
      t.string :number

      t.timestamps
    end
  end
end
