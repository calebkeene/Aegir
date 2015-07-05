class AddVolumeToPumps < ActiveRecord::Migration
  def change
  	add_column :pumps, :volume, :string
  end
end
