class AddPHToNotificationModel < ActiveRecord::Migration
  def change
  	add_column :notifications, :ph, :text
  end
end
