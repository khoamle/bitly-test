class DropTables < ActiveRecord::Migration[5.0]
  def change
    drop_table :bitlies
    drop_table :links
  end
end
