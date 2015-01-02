class GaragesController < ApplicationController

	def index
		@garages = Garage.all
	end

	def show
		@garage = Garage.find(params[:id])
	end

	def new
		@garage = Garage.new
	end

	def create
		@garage = Garage.new(params.require(:garage).permit(:date, :model, :make, :vin, :tech, :parts, :comments))
		if @garage.save
			redirect_to garages_path
		else 
			render 'new'
		end
	end

	def edit
		@garage = Garage.find(params[:id])
	end

	def update
		@garage = Garage.find(params[:id])
		if @garage.update_attributes(params.require(:garage).permit(:date, :model, :make, :vin, :tech, :parts, :comments))
			redirect_to garages_path
		else
			render 'edit'
		end
	end

	def destroy
		@garage = Garage.find(params[:id])
		@garage.destroy
		redirect_to garages_path
	end

end
