class ForecastAreasController < ApplicationController
	before_filter :authenticate_user!

	def index
		@forecast_areas = ForecastArea.all
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
		else
			flash[:error] = "List creation failed"
			render 'new'
		end
	end

end
