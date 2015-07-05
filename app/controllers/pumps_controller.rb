class PumpsController < ApplicationController

	def create
		@pump = @tank.pumps.build
		@pump.name = params[:name]
		@pump.volume = params[:volume]
		@pump.country_of_origin = params[:country_of_origin]
		@pump.save! ? flash.notice = "New Pump added to #{@tank.name}" : flash.notice = @pump.errors.messages
	end

	def update
		@pump = @tank.pumps.find_by(name: "#{@pump.name}")
	end

	private
	def pump_params
		params[:pump].permit(:name, :volume, :country_of_origin)
	end

end