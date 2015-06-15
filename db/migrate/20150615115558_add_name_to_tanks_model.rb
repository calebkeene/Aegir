class AddNameToTanksModel < ActiveRecord::Migration
  def change
  	add_column :tanks, :name, :string, unique: true
  end
end
