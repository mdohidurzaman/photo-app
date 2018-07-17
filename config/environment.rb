# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
    :adress => 'smtp.sendgrid.net',
    :port => '587',
    :authencation => :plain,
    :user_name => ENV['SEDDGRID_USERNAME'],
    :password => ENV['SENDGRID_PASSWORD'],
    :domain => 'heroku.com',
    :enable_starttls_auto => true
}