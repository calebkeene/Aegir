module ApplicationHelper

def has_name?(user)
	user.name==nil ? false : true
end

end
