class UsersController < ApplicationController
	
	def stats
		@users = User.all
	end

	#def increment_user_water_changes(user)
  #  current = user.water_changes
  #  user.water_changes = current + 1
  #  user.save!
  #end

end