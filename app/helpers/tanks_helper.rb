module TanksHelper
	
	def has_name?(user)
		user.name==nil ? false : true
	end

	def not_nil?(model_attr)
		model_attr==nil ? false : true
	end

	def water_change_due?(last_water_change)
		(last_water_change + 1.week) > Time.now
	end

	def water_change_overdue?(last_water_change)
		(last_water_change + 1.week) > (Time.now + 1.day)
	end

	def next_water_change(last_water_change)
		"#{distance_of_time_in_words(last_water_change, last_water_change + 1.week)}
	end

end
