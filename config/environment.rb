# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name => 'apikey', # This is the string literal 'apikey', NOT the ID of your API key
  :password => ENV['SENDGRID_API_KEY'], # This is the secret sendgrid API key which was issued during API key creation
  :domain => 'chap7.fly.dev',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}

# config.action_mailer.raise_delivery_errors = true
# config.action_mailer.delivery_method = :smtp
# host = 'chap7.fly.dev'
# config.action_mailer.default_url_options = { host: host }
# ActionMailer::Base.smtp_settings = {
# :address => 'smtp.sendgrid.net',
# :port => '587',
# :authentication => :plain,
# :user_name => ENV['SENDGRID_USERNAME'],
# :password => ENV['SENDGRID_PASSWORD'],
# :domain => 'heroku.com',
# :enable_starttls_auto => true
# }...
