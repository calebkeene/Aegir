class AddNameToPumps < ActiveRecord::Migration
  def change
  	add_column :pumps, :name, :string, unique: true
  end
end
