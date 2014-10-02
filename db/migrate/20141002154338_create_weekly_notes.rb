class CreateWeeklyNotes < ActiveRecord::Migration
  def change
    create_table :weekly_notes do |t|
      t.string :danger_yn
      t.string :drugs_last_changed
      t.text :drugs_not_why
      t.text :drugs_change_why
      t.date :meeting_date

      t.timestamps
    end
  end
end
