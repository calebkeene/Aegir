class Pump < ActiveRecord::Base
	validates {
		:name, presence: true
		:volume, presence: true
		:country_of_origin, presence: true
	}
	belongs_to :tank
end
