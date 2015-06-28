class NotificationController < ApplicationController

def create(vals)
	@notification = @tank.notifications.build
	vals = $SERIAL_LISTENER.get_data
	@notification.temperature = vals[0]
	@notification.pH = vals[1]
	@notification.salinity = vals[2]
	@notification.save!

end
  
def get_data
  loop do
    data = Array.new
    loop do
      char = @listener.read(1)
      break if char=="\n"
      data << char
    end 
    data.delete_at(-1) # remove return carriage
    return data
  end
end
