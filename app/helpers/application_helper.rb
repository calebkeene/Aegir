module ApplicationHelper

	def has_name?(user)
		user.name==nil ? false : true
	end

	def not_nil?(model_attr)
		model_attr==nil ? false : true
	end

end