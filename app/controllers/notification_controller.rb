class NotificationController < ApplicationController

def create(vals)
	@notification = @tank.notifications.build
	vals = @SerialListener.get_data
	@notification.temperature = vals[0]
	@notification.pH = vals[1]
	@notification.salinity = vals[2]
	@notification.save!

end
  