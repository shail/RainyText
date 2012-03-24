class ForecastArea < ActiveRecord::Base
	
	validates :zipcode, :presence => true
	validates :phone_number, :presence => true
	validates :time, :presence => true
	validates :forecast_time_zone, :presence => true
	validates :zipcode, :length => { :is => 5 }
	validates :phone_number, :length => { :is => 10}
	belongs_to :user

end

