class TanksController < ApplicationController

	def home 
		@tanks = Tank.all
	end

	def about
		@tanks = Tank.all?
	end

	def index
		@tanks = Tank.all
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
				redirect_to action: :home
		else
			render :new
		end
	end

	def update
		@tank = get_id
		if @tank.update(tank_params)
			redirect_to action: :home
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
end
