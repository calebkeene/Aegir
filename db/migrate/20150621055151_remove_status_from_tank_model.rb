class RemoveStatusFromTankModel < ActiveRecord::Migration
  def change
  	remove_column :tanks, :type, :text
  end
end
