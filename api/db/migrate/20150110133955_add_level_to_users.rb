class AddLevelToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :level, :integer
  	add_column :users, :experience, :integer, default: 1
  end
end
