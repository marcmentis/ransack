class CreateUsers < ActiveRecord::Migration
  def change
    drop_table(:users)
    
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.string :authen
      t.string :facility
      t.string :role
      t.string :email
      t.string :firstinitial
      t.string :middleinitial

      t.timestamps
    end
    add_index :users, :facility
  end
end
