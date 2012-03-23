desc "This task checks the weather and sends a text"
  task :check_weather => :environment do
  @danger_icons = ["chanceflurries", "chancerain", "chancetstorm", "cloudy", "mostlycloudy", "rain", "tstorms"]
  all_users = User.all
  all_users.each do |user|
  	
  	forecast = user.forecast_area
  	
  	unless forecast.time.hour.nil?
  		
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
