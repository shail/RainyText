task :check_weather_6 => :environment do
  @danger_icons = ["chanceflurries", "chancerain", "chancetstorm", "cloudy", "mostlycloudy", "rain", "tstorms"]
  all_users = User.all

  all_users.each do |user|
  	times = ['6:00 AM', '7:00 AM', '8:00 AM']
  	forecast = user.forecast_area
    time_zone = user.forecast_area.forecast_time_zone
    time = user.forecast_area.time

  	
  	if user.forecast_area
  		
  		barometer = Barometer.new(forecast.zipcode)
  		weather_info = barometer.measure
  		weather_type = weather_info.current.icon

  		subject = "No need for an umbrella today, have a great day!"

  		@danger_icons.each do |bad_weather|
  			if weather_type == bad_weather
  				subject = "Grab an umbrella, don't want to get caught in the rain!"
  			end
  		end
  	end

  	account_sid = 'AC1e33ca9e05cd4f86b12ffab6078464f6'
		auth_token = 'c451f2e1dc06ae831b8c542323099101'

		client = Twilio::REST::Client.new account_sid, auth_token
  	
  	phone_number = "+1#{forecast.phone_number}"

  	client.account.sms.messages.create(
			:from => '+14155992671',
			:to => "#{phone_number}",
			:body => "#{subject}"
		)
  end  
end
