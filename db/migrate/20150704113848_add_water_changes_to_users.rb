class AddWaterChangesToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :water_changes, :integer
  end
end
