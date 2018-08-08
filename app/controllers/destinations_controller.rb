class DestinationsController < ApplicationController
	def show
		@destination = Destination.find(params[:id])
	end
	def edit
		@destination = Destination.find(params[:id])
	end

	def update
		@destination = Destination.find(params[:id])
		if @destination.update_attributes(destination_params)
			redirect_to show_path(@destination)
		else
			render 'edit'
		end
	end

	private
	def destination_params
		params.require(:destination).permit(:name, :description)
	end
end
