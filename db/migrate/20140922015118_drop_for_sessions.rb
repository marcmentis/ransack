class DropForSessions < ActiveRecord::Migration
  def change
  	drop_table(:for_sessions)
  end
end
