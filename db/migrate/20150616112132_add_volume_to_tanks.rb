class AddVolumeToTanks < ActiveRecord::Migration
  def change
  	add_column :tanks, :volume, :string
  end
end
