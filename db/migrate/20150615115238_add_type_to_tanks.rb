class AddTypeToTanks < ActiveRecord::Migration
  def change
  	add_column :tanks, :type, :text
  end
end
