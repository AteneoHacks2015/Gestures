class AddPointsToItem < ActiveRecord::Migration
  def change
  	add_column :items, :points, :integer, default: 1
  end
end
