ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "gmail.com",
  :user_name            => "rainytext@gmail.com",
  :password             => "Thenewland45",
  :authentication       => "plain",
  :enable_starttls_auto => true
}