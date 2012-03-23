class ForecastArea < ActiveRecord::Base
	
	validates :zipcode, :presence => true
	validates :phone_number, :presence => true
	validates :time, :presence => true
	validates :zipcode, :length => { :is => 5 }
	validates :phone_number, :length => { :is => 10}
	belongs_to :user

	def check_the_weather

	end
end
