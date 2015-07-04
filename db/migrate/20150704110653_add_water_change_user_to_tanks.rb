class AddWaterChangeUserToTanks < ActiveRecord::Migration
  def change
  	add_column :tanks, :last_water_change_user, :string
  end
end
