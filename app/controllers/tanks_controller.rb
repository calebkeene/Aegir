class TanksController < ApplicationController
	respond_to :html, :js
	
	def home 
		@tanks = all_tanks
	end

	def about
		@tanks = all_tanks
	end

	def manage
		@tanks = all_tanks
	end

	def index
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
				redirect_to action: :manage
		else
			render :new
		end
	end

	def update
		@tank = get_id
		if @tank.update(tank_params)
			flash.notice = "Successfully updated"
			redirect_to action: :manage
		else
			flash[:message] = @tank.errors.messages
			redirect_to action: :edit
		end
	end

	def show
		@tank = get_id
	end

	def destroy
		tank = get_id
		tank.destroy
		redirect_to action: :home
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
