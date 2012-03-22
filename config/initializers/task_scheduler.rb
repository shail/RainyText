# require 'rufus/scheduler'
# scheduler = Rufus::Scheduler.start_new

# scheduler.every '10m' do
# 	require "net/http"
#   require "uri"
#   url = 'http://codeglot.com'
#   Net::HTTP.get_response(URI.parse(url))
# end

# scheduler.every '1h' do
# 	require 'barometer'
# 	require 'twilio-ruby'
#   User.
# 	all_weather_info = Barometer.new()

# 	twilio_account_sid = 'AC1e33ca9e05cd4f86b12ffab6078464f6'
# 	twilio_auth_token = 'c451f2e1dc06ae831b8c542323099101'

# 	client = Twilio::Rest::Client.new twilio_account_sid, twilio_auth_token
#   client.account.sms.messages.create(
#   	:from => '+14155992671',
#   	:to => '+16039186534',
#   	:body => 'Hey there!'
#   	)
 

# # set up a client to talk to the Twilio REST API
# @client = Twilio::REST::Client.new account_sid, auth_token

# @client.account.sms.messages.create(
# 	:from => '+14155992671',
# 	:to => '+16039186534',
# 	:body => 'Hey there!'
# 	)
# Barometer.config = { 1 => [:yahoo], 2 => :wunderground}


# barometer = Barometer.new("94539")
# weather_info = barometer.measure
# weather_type = weather_info.current.icon


