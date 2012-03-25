task :check_weather_3 => :environment do
  all_users = User.all

  all_users.each do |user|
  	forecast = user.forecast_area.forecast_time_zone
    time = user.forecast_area.time

  	
  	if (forecast == 'Eastern') && (time == '6:00 AM')
  		
  		barometer = Barometer.new(forecast.zipcode)
  		weather_info = barometer.measure
  		weather_type = weather_info.current.icon

      danger_icons = ["chanceflurries", "chancerain", "chancetstorm", "cloudy", "mostlycloudy", "rain", "tstorms"]

      if danger_icons.find {|icon| icon == weather_type} 
        subject = "Grab an umbrella, don't want to get caught in the rain!"
      else
  			subject = "No need for an umbrella today, have a great day!"
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

times = ['6:00 AM', '7:00 AM', '8:00 AM']
    forecasts = ['Pacific', 'Mountain', 'Central', 'Eastern']