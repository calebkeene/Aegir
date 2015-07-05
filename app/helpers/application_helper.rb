module ApplicationHelper
	
	def top_user(users)
		top = User.new
		top.water_changes = 0
		e = false
		equals = Array.new
		users.each do |u|
			if u.water_changes > top.water_changes
				top = u
			elsif u.water_changes == top.water_changes
				e = true
				equals[0] = u.name
				equals[1] = top.name
			end
		end
		if !e
			"#{top.name} is the top Aquarium enthusiast!"
		else
			"#{equals[0]} and #{equals[1]} are both top Aquarium enthusiasts!"
		end
	end

end

