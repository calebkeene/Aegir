class AddLastwaterchangeDateToTanks < ActiveRecord::Migration
  def change
  	add_column :tanks, :last_water_change, :datetime
  end
end
