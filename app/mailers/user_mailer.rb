class UserMailer < ActionMailer::Base
  default :from => 'nomorerain@rainytext.com'

  def welcome_email(email)
  	@email = email
  	mail(:to => @email, :subject => "Welcome to RainyText")
  end
end
