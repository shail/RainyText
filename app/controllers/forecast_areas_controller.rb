class ForecastAreasController < ApplicationController
	before_filter :authenticate_user!

	def index
		@forecast_areas = current_user.forecast_areas
	end

	def show
		@forecast_area = ForecastArea.find(params[:id])
	end

	def new
		@forecast_area = ForecastArea.new
	end

	def create
		@forecast_area = ForecastArea.new(params[:forecast_area])
		@forecast_area.user_id = current_user.id
		if @forecast_area.save
			flash[:success] = "New forecast area created"
			redirect_to forecast_areas_path
		else
			flash[:error] = "List creation failed"
			render 'new'
		end
	end

	def edit
		@forecast_area = ForecastArea.find(params[:id])
	end

	def update
		@forecast_area = ForecastArea.find(params[:id])
		@forecast_area.update_attributes(params[:forecast_area])
		redirect_to forecast_areas_path
	end

	def destroy
		@forecast_area = current_user.forecast_areas.find_by_id(params[:id])
		@forecast_area.destroy
		redirect_to forecast_areas_path
	end

end
