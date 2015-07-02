class TanksController < ApplicationController
	before_action :all_tanks, only: [:home, :create, :manage, :update]
	respond_to :html, :js

	def about
		@tanks = all_tanks
	end

	def edit
		@tank = get_id
	end

	def new
		@tank = Tank.new
	end

	def create
		@tank = Tank.new(tank_params)
		if @tank.save
				flash.notice = "New Tank added"
		else
			render :new
		end
	end

	def update
		@tank = get_id
		if @tank.update(tank_params)
			flash.notice = "Successfully updated"
		else
			flash[:message] = @tank.errors.messages
		end
	end

	def show
		@tank = get_id
	end

	def destroy
		tank = get_id
		tank.destroy
		flash.notice = "Tank removed"
		redirect_to action: :manage
	end

	private
	def get_id
		Tank.find(params[:id])
	end

	def all_tanks
		@tanks = Tank.all
	end
	
	def tank_params
		params[:tank].permit(:name, :volume, :fish_number)
	end
end
