class AddSalinityToNotificationModel < ActiveRecord::Migration
  def change
  	add_column :notifications, :salinity, :text
  end
end
