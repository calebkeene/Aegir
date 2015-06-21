class AddTemperatureToNotificationModel < ActiveRecord::Migration
  def change
  	add_column :notifications, :temperature, :text
  end
end
