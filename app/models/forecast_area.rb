class ForecastArea < ActiveRecord::Base
	
	validates :zipcode, :presence => true
	validates :phone_number, :presence => true
	validates :time, :presence => true
	validates :forecast_time_zone, :presence => true
	validates :zipcode, :length => { :is => 5 }
	validates :phone_number, :length => { :is => 10}
	belongs_to :user
	# before_create :generate_and_send_verify_code

	protected

	# def generate_and_send_verify_code
	# 	self.verify_code = SecureRandom.hex(5)

 #    account_sid = 'AC1e33ca9e05cd4f86b12ffab6078464f6'
 #    auth_token = 'c451f2e1dc06ae831b8c542323099101'

 #    client = Twilio::REST::Client.new account_sid, auth_token
    
 #    client.account.sms.messages.create(
 #      :from => '+17273466568',
 #      :to => "+1#{self.phone_number}",
 #      :body => "#{self.verify_code}"
 #    )
 #  end
end

