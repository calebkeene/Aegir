class AddFishNumberToTanksModel < ActiveRecord::Migration
  def change
  	add_column :tanks, :fish_number, :string
  end
end
