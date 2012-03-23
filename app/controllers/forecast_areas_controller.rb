class ForecastAreasController < ApplicationController
	before_filter :authenticate_user!
	before_filter :correct_user, :only => :destroy

	def index
		@forecast_area = current_user.forecast_area
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
		@forecast_area.destroy
		redirect_to forecast_areas_path
	end

	private

		def correct_user
			@forecast_area = current_user.forecast_area
			redirect_to forecast_areas_path if @forecast_area.nil?
		end

end

