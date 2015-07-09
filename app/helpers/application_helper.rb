module ApplicationHelper
	
	def top_user(users)
		top = User.new
		top.water_changes = 0
		top.skimmer_cleans = 0
		e = false
		equals = Array.new
		users.each do |u|
			a = u.water_changes + u.skimmer_cleans
			b = top.water_changes + top.skimmer_cleans
			if a > b
				e = false if e
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
			"#{equals[0]} and #{equals[1]} are equally enthusiastic Aquarium enthusiasts!"
		end
	end

	def date_stripper(date)
		date_str = date.to_s[/[^+]+/] # get rid of the tailing +1200
		date_str = date_str.split(" ")
		date_str.first + " at " + date_str.last
	end

	def bootstrap_flash_class(flash_type)
    { success: 'alert-success',
      error:   'alert-danger',
      alert:   'alert-warning',
      notice:  'alert-info'
    }[flash_type.to_sym] || flash_type.to_s
  end

end

