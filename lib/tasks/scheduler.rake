task :first_check_weather => :environment do
  all_users = User.all

  all_users.each do |user|
  	forecast = user.forecast_area
    time_zone = forecast.forecast_time_zone
    time = forecast.time
    zipcode = forecast.zipcode
    phone_number = "+1#{forecast.phone_number}"

  	
  	if (time_zone == 'Eastern') && (time == '6:00 AM')
  		require 'open-uri'
      require 'json'

      open("http://api.wunderground.com/api/9cce55db6a4b4e99/forecast/q/#{zipcode}.json") do |f|
        json_string = f.read
        parsed_json = JSON.parse(json_string)
        new_json = parsed_json["forecast"]
        @weather_type = new_json["txt_forecast"]["forecastday"][0]["icon"]
      end

      danger_icons = ["chanceflurries", "chancerain", "chancetstorm", "cloudy", "mostlycloudy", "rain", "tstorms"]

      if danger_icons.find {|icon| icon == @weather_type} 
        subject = "Grab an umbrella, don't want to get caught in the rain!"
      else
  			subject = "No need for an umbrella today, have a great day!"
  		end
  

      account_sid = 'AC1e33ca9e05cd4f86b12ffab6078464f6'
		  auth_token = 'c451f2e1dc06ae831b8c542323099101'

		  client = Twilio::REST::Client.new account_sid, auth_token
  	

  	client.account.sms.messages.create(
			:from => '+17273466568',
			:to => "#{phone_number}",
			:body => "#{subject}"
		)
   end
  end  
end

task :second_check_weather => :environment do
  all_users = User.all

  all_users.each do |user|
    forecast = user.forecast_area
    time_zone = forecast.forecast_time_zone
    time = forecast.time
    zipcode = forecast.zipcode
    phone_number = "+1#{forecast.phone_number}"

    
    if ((time_zone == 'Eastern' && time == '7:00 AM') || (time_zone == 'Central' && time == '6:00 AM'))
      require 'open-uri'
      require 'json'

      open("http://api.wunderground.com/api/9cce55db6a4b4e99/forecast/q/#{zipcode}.json") do |f|
        json_string = f.read
        parsed_json = JSON.parse(json_string)
        new_json = parsed_json["forecast"]
        @weather_type = new_json["txt_forecast"]["forecastday"][0]["icon"]
      end

      danger_icons = ["chanceflurries", "chancerain", "chancetstorm", "cloudy", "mostlycloudy", "rain", "tstorms"]

      if danger_icons.find {|icon| icon == @weather_type} 
        subject = "Grab an umbrella, don't want to get caught in the rain!"
      else
        subject = "No need for an umbrella today, have a great day!"
      end
  

      account_sid = 'AC1e33ca9e05cd4f86b12ffab6078464f6'
      auth_token = 'c451f2e1dc06ae831b8c542323099101'

      client = Twilio::REST::Client.new account_sid, auth_token
    

    client.account.sms.messages.create(
      :from => '+17273466568',
      :to => "#{phone_number}",
      :body => "#{subject}"
    )
   end
  end  
end

task :third_check_weather => :environment do
  all_users = User.all

  all_users.each do |user|
    forecast = user.forecast_area
    time_zone = forecast.forecast_time_zone
    time = forecast.time
    zipcode = forecast.zipcode
    phone_number = "+1#{forecast.phone_number}"

    
    if ((time_zone == 'Eastern' && time == '8:00 AM') || (time_zone == 'Central' && time == '7:00 AM') || (time_zone == 'Mountain' && time == '6:00 AM'))
      require 'open-uri'
      require 'json'

      open("http://api.wunderground.com/api/9cce55db6a4b4e99/forecast/q/#{zipcode}.json") do |f|
        json_string = f.read
        parsed_json = JSON.parse(json_string)
        new_json = parsed_json["forecast"]
        @weather_type = new_json["txt_forecast"]["forecastday"][0]["icon"]
      end

      danger_icons = ["chanceflurries", "chancerain", "chancetstorm", "cloudy", "mostlycloudy", "rain", "tstorms"]

      if danger_icons.find {|icon| icon == @weather_type} 
        subject = "Grab an umbrella, don't want to get caught in the rain!"
      else
        subject = "No need for an umbrella today, have a great day!"
      end
  

      account_sid = 'AC1e33ca9e05cd4f86b12ffab6078464f6'
      auth_token = 'c451f2e1dc06ae831b8c542323099101'

      client = Twilio::REST::Client.new account_sid, auth_token
    

    client.account.sms.messages.create(
      :from => '+17273466568',
      :to => "#{phone_number}",
      :body => "#{subject}"
    )
   end
  end  
end

task :fourth_check_weather => :environment do
  all_users = User.all

  all_users.each do |user|
    forecast = user.forecast_area
    time_zone = forecast.forecast_time_zone
    time = forecast.time
    zipcode = forecast.zipcode
    phone_number = "+1#{forecast.phone_number}"

    
    if ((time_zone == 'Central' && time == '8:00 AM') || (time_zone == 'Mountain' && time == '7:00 AM') || (time_zone == 'Pacific' && time == '6:00 AM'))
      require 'open-uri'
      require 'json'

      open("http://api.wunderground.com/api/9cce55db6a4b4e99/forecast/q/#{zipcode}.json") do |f|
        json_string = f.read
        parsed_json = JSON.parse(json_string)
        new_json = parsed_json["forecast"]
        @weather_type = new_json["txt_forecast"]["forecastday"][0]["icon"]
      end

      danger_icons = ["chanceflurries", "chancerain", "chancetstorm", "cloudy", "mostlycloudy", "rain", "tstorms"]

      if danger_icons.find {|icon| icon == @weather_type} 
        subject = "Grab an umbrella, don't want to get caught in the rain!"
      else
        subject = "No need for an umbrella today, have a great day!"
      end
  

      account_sid = 'AC1e33ca9e05cd4f86b12ffab6078464f6'
      auth_token = 'c451f2e1dc06ae831b8c542323099101'

      client = Twilio::REST::Client.new account_sid, auth_token
    

    client.account.sms.messages.create(
      :from => '+17273466568',
      :to => "#{phone_number}",
      :body => "#{subject}"
    )
   end
  end  
end

task :fifth_check_weather => :environment do
  all_users = User.all

  all_users.each do |user|
    forecast = user.forecast_area
    time_zone = forecast.forecast_time_zone
    time = forecast.time
    zipcode = forecast.zipcode
    phone_number = "+1#{forecast.phone_number}"

    
    if ((time_zone == 'Mountain' && time == '8:00 AM') || (time_zone == 'Pacific' && time == '7:00 AM'))
      require 'open-uri'
      require 'json'

      open("http://api.wunderground.com/api/9cce55db6a4b4e99/forecast/q/#{zipcode}.json") do |f|
        json_string = f.read
        parsed_json = JSON.parse(json_string)
        new_json = parsed_json["forecast"]
        @weather_type = new_json["txt_forecast"]["forecastday"][0]["icon"]
      end

      danger_icons = ["chanceflurries", "chancerain", "chancetstorm", "cloudy", "mostlycloudy", "rain", "tstorms"]

      if danger_icons.find {|icon| icon == @weather_type} 
        subject = "Grab an umbrella, don't want to get caught in the rain!"
      else
        subject = "No need for an umbrella today, have a great day!"
      end
  

      account_sid = 'AC1e33ca9e05cd4f86b12ffab6078464f6'
      auth_token = 'c451f2e1dc06ae831b8c542323099101'

      client = Twilio::REST::Client.new account_sid, auth_token
    

    client.account.sms.messages.create(
      :from => '+17273466568',
      :to => "#{phone_number}",
      :body => "#{subject}"
    )
   end
  end  
end

task :sixth_check_weather => :environment do
  all_users = User.all

  all_users.each do |user|
    forecast = user.forecast_area
    time_zone = forecast.forecast_time_zone
    time = forecast.time
    zipcode = forecast.zipcode
    phone_number = "+1#{forecast.phone_number}"

    
    if (time_zone == 'Pacific') && (time == '8:00 AM')
      require 'open-uri'
      require 'json'

      open("http://api.wunderground.com/api/9cce55db6a4b4e99/forecast/q/#{zipcode}.json") do |f|
        json_string = f.read
        parsed_json = JSON.parse(json_string)
        new_json = parsed_json["forecast"]
        @weather_type = new_json["txt_forecast"]["forecastday"][0]["icon"]
      end

      danger_icons = ["chanceflurries", "chancerain", "chancetstorm", "cloudy", "mostlycloudy", "rain", "tstorms"]

      if danger_icons.find {|icon| icon == @weather_type} 
        subject = "Grab an umbrella, don't want to get caught in the rain!"
      else
        subject = "No need for an umbrella today, have a great day!"
      end
  

      account_sid = 'AC1e33ca9e05cd4f86b12ffab6078464f6'
      auth_token = 'c451f2e1dc06ae831b8c542323099101'

      client = Twilio::REST::Client.new account_sid, auth_token
    

    client.account.sms.messages.create(
      :from => '+17273466568',
      :to => "#{phone_number}",
      :body => "#{subject}"
    )
   end
  end  
end
