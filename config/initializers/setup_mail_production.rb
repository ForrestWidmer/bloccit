if Rails.env.production?
  ActionMailer::Base.delivery_method = :smtp
  ActionMailer::Base.smtp_settings = {
    :address        => 'smtp.sendgrid.net',
    :port           => '587',
    :authentication => :plain,
    :user_name      => "app18587321@heroku.com",
    :password       => "wybwdcuw",
    :domain         => 'heroku.com',
    :enable_starttls_auto => true
  }
end