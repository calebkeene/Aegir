class NotificationMailer < ApplicationMailer
	
	add_template_helper(TanksHelper)

	default from: 'noreply@aegir.co.nz'

	def water_change
		# email to send when a waterchange is overdue
	end 

	def alert(alert_type)
		# email to send when there is an issue (some parameter is critical)
	end

end
