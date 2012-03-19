class ForecastAreasController < ApplicationController
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
