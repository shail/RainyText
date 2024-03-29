task :first_check_weather => :environment do
  all_users = User.all

  all_users.each do |user|
  if user.forecast_area
  	forecast = user.forecast_area
    time_zone = forecast.forecast_time_zone
    time = forecast.time.hour
    zipcode = forecast.zipcode
    phone_number = "+1#{forecast.phone_number}"
  	
  	if (time_zone == 'Eastern') && (time == 6)
  		require 'open-uri'
      require 'json'

      open("http://api.wunderground.com/api/WUNDERGROUND_API_KEY/forecast/q/#{zipcode}.json") do |f|
        json_string = f.read
        parsed_json = JSON.parse(json_string)
        new_json = parsed_json["forecast"]
        @weather_type = new_json["txt_forecast"]["forecastday"][0]["icon"]
      end

      if @weather_type

      danger_icons = ["chanceflurries", "chancerain", "chancetstorm", "cloudy", "mostlycloudy", "rain", "tstorms"]

      if danger_icons.find {|icon| icon == @weather_type} 
        subject = "Grab an umbrella, don't want to get caught in the rain!"
      else
  			subject = "No need for an umbrella today, have a great day!"
  		end
  

      account_sid = 'TWILIO_ACCOUNT_SID'
		  auth_token = 'TWILIO_AUTH_TOKEN'

		  client = Twilio::REST::Client.new account_sid, auth_token
  	

  	client.account.sms.messages.create(
			:from => 'TWILIO_NUMBER',
			:to => "#{phone_number}",
			:body => "#{subject}"
		)
  end
   end
  end
  end  
end

task :second_check_weather => :environment do
  all_users = User.all

  all_users.each do |user|
    if user.forecast_area
      forecast = user.forecast_area
      time_zone = forecast.forecast_time_zone
      time = forecast.time.hour
      zipcode = forecast.zipcode
      phone_number = "+1#{forecast.phone_number}"

    
    if ((time_zone == 'Eastern' && time == 7) || (time_zone == 'Central' && time == 6))
      require 'open-uri'
      require 'json'

      open("http://api.wunderground.com/api/WUNDERGROUND_API_KEY/forecast/q/#{zipcode}.json") do |f|
        json_string = f.read
        parsed_json = JSON.parse(json_string)
        new_json = parsed_json["forecast"]
        @weather_type = new_json["txt_forecast"]["forecastday"][0]["icon"]
      end

      if @weather_type

      danger_icons = ["chanceflurries", "chancerain", "chancetstorm", "cloudy", "mostlycloudy", "rain", "tstorms"]

      if danger_icons.find {|icon| icon == @weather_type} 
        subject = "Grab an umbrella, don't want to get caught in the rain!"
      else
        subject = "No need for an umbrella today, have a great day!"
      end
  

      account_sid = 'TWILIO_ACCOUNT_SID'
      auth_token = 'TWILIO_AUTH_TOKEN'

      client = Twilio::REST::Client.new account_sid, auth_token
    

    client.account.sms.messages.create(
      :from => 'TWILIO_NUMBER',
      :to => "#{phone_number}",
      :body => "#{subject}"
    )
  end
  end
  end
  end  
end

task :third_check_weather => :environment do
  all_users = User.all

  all_users.each do |user|
    if user.forecast_area
      forecast = user.forecast_area
      time_zone = forecast.forecast_time_zone
      time = forecast.time.hour
      zipcode = forecast.zipcode
      phone_number = "+1#{forecast.phone_number}"

    
    if ((time_zone == 'Eastern' && time == 8) || (time_zone == 'Central' && time == 7) || (time_zone == 'Mountain' && time == 6))
      require 'open-uri'
      require 'json'

      open("http://api.wunderground.com/api/WUNDERGROUND_API_KEY/forecast/q/#{zipcode}.json") do |f|
        json_string = f.read
        parsed_json = JSON.parse(json_string)
        new_json = parsed_json["forecast"]
        @weather_type = new_json["txt_forecast"]["forecastday"][0]["icon"]
      end

      if @weather_type

      danger_icons = ["chanceflurries", "chancerain", "chancetstorm", "cloudy", "mostlycloudy", "rain", "tstorms"]

      if danger_icons.find {|icon| icon == @weather_type} 
        subject = "Grab an umbrella, don't want to get caught in the rain!"
      else
        subject = "No need for an umbrella today, have a great day!"
      end
  

      account_sid = 'TWILIO_ACCOUNT_SID'
      auth_token = 'TWILIO_AUTH_TOKEN'

      client = Twilio::REST::Client.new account_sid, auth_token
    

    client.account.sms.messages.create(
      :from => 'TWILIO_NUMBER',
      :to => "#{phone_number}",
      :body => "#{subject}"
    )
    end
    end
   end
  end  
end

task :fourth_check_weather => :environment do
  all_users = User.all

  all_users.each do |user|
    if user.forecast_area
    forecast = user.forecast_area
    time_zone = forecast.forecast_time_zone
    time = forecast.time.hour
    zipcode = forecast.zipcode
    phone_number = "+1#{forecast.phone_number}"

    
    if ((time_zone == 'Central' && time == 8) || (time_zone == 'Mountain' && time == 7) || (time_zone == 'Pacific' && time == 6))
      require 'open-uri'
      require 'json'

      open("http://api.wunderground.com/api/WUNDERGROUND_API_KEY/forecast/q/#{zipcode}.json") do |f|
        json_string = f.read
        parsed_json = JSON.parse(json_string)
        new_json = parsed_json["forecast"]
        @weather_type = new_json["txt_forecast"]["forecastday"][0]["icon"]
      end

      if @weather_type

      danger_icons = ["chanceflurries", "chancerain", "chancetstorm", "cloudy", "mostlycloudy", "rain", "tstorms"]

      if danger_icons.find {|icon| icon == @weather_type} 
        subject = "Grab an umbrella, don't want to get caught in the rain!"
      else
        subject = "No need for an umbrella today, have a great day!"
      end
  

      account_sid = 'TWILIO_ACCOUNT_SID'
      auth_token = 'TWILIO_AUTH_TOKEN'

      client = Twilio::REST::Client.new account_sid, auth_token
    

    client.account.sms.messages.create(
      :from => 'TWILIO_NUMBER',
      :to => "#{phone_number}",
      :body => "#{subject}"
    )
    end
    end
   end
  end  
end

task :fifth_check_weather => :environment do
  all_users = User.all

  all_users.each do |user|
    if user.forecast_area
    forecast = user.forecast_area
    time_zone = forecast.forecast_time_zone
    time = forecast.time.hour
    zipcode = forecast.zipcode
    phone_number = "+1#{forecast.phone_number}"

    
    if ((time_zone == 'Mountain' && time == 8) || (time_zone == 'Pacific' && time == 7))
      require 'open-uri'
      require 'json'

      open("http://api.wunderground.com/api/WUNDERGROUND_API_KEY/forecast/q/#{zipcode}.json") do |f|
        json_string = f.read
        parsed_json = JSON.parse(json_string)
        new_json = parsed_json["forecast"]
        @weather_type = new_json["txt_forecast"]["forecastday"][0]["icon"]
      end

      if @weather_type

      danger_icons = ["chanceflurries", "chancerain", "chancetstorm", "cloudy", "mostlycloudy", "rain", "tstorms"]

      if danger_icons.find {|icon| icon == @weather_type} 
        subject = "Grab an umbrella, don't want to get caught in the rain!"
      else
        subject = "No need for an umbrella today, have a great day!"
      end
  

      account_sid = 'TWILIO_ACCOUNT_SID'
      auth_token = 'TWILIO_AUTH_TOKEN'

      client = Twilio::REST::Client.new account_sid, auth_token
    

    client.account.sms.messages.create(
      :from => 'TWILIO_NUMBER',
      :to => "#{phone_number}",
      :body => "#{subject}"
    )
    end
    end
   end
  end  
end

task :sixth_check_weather => :environment do
  all_users = User.all

  all_users.each do |user|
    if user.forecast_area
    forecast = user.forecast_area
    time_zone = forecast.forecast_time_zone
    time = forecast.time.hour
    zipcode = forecast.zipcode
    phone_number = "+1#{forecast.phone_number}"

    
    if (time_zone == 'Pacific') && (time == 8)
      require 'open-uri'
      require 'json'

      open("http://api.wunderground.com/api/WUNDERGROUND_API_KEY/forecast/q/#{zipcode}.json") do |f|
        json_string = f.read
        parsed_json = JSON.parse(json_string)
        new_json = parsed_json["forecast"]
        @weather_type = new_json["txt_forecast"]["forecastday"][0]["icon"]
      end

      if @weather_type

      danger_icons = ["chanceflurries", "chancerain", "chancetstorm", "cloudy", "mostlycloudy", "rain", "tstorms"]

      if danger_icons.find {|icon| icon == @weather_type} 
        subject = "Grab an umbrella, don't want to get caught in the rain!"
      else
        subject = "No need for an umbrella today, have a great day!"
      end
  

      account_sid = 'TWILIO_ACCOUNT_SID'
      auth_token = 'TWILIO_AUTH_TOKEN'

      client = Twilio::REST::Client.new account_sid, auth_token
    

    client.account.sms.messages.create(
      :from => 'TWILIO_NUMBER',
      :to => "#{phone_number}",
      :body => "#{subject}"
    )
    end
    end
   end
  end  
end
