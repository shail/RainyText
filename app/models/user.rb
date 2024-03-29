class User < ActiveRecord::Base
	before_create :send_welcome_email

  has_one :forecast_area
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me

  
   def send_welcome_email
     UserMailer.welcome_email(self.email).deliver
   end	

end
