module TanksHelper

	def has_name?(user)
		user.name==nil ? false : true
	end

	def not_nil?(model_attr)
		model_attr==nil ? false : true
	end

	def water_change_due?(last_water_change)
		(last_water_change.localtime + 1.week) < Time.now
	end

	def water_change_overdue?(last_water_change) # used by NotificationMailer (reminder emails)
		(last_water_change.localtime + 1.week) < (Time.now + 1.day)
	end

	def next_water_change_date(last_water_change)
		last = last_water_change.localtime
		"#{distance_of_time_in_words(last, last + 1.week)}"
	end

	def skimmer_clean_due?(last_skimmer_clean)
		(last_skimmer_clean.localtime + 1.day) < Time.now
	end

	def skimmer_clean_overdue?(last_skimmer_clean) # NotificationMailer
		(last_skimmer_clean.localtime + 1.day) < (Time.now + 1.day)
	end

	def next_skimmer_clean_date(last_skimmer_clean)
		last = last_skimmer_clean.localtime
		"#{distance_of_time_in_words(last, last + 1.day)}"
		
	end

end
