Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.
<<<<<<< HEAD
  # require 'tlsmail'
  #       Net::SMTP.enable_tls(OpenSSL::SSL::VERIFY_NONE)
  #       ActionMailer::Base.delivery_method = :smtp
  #       ActionMailer::Base.perform_deliveries = true
  #       ActionMailer::Base.raise_delivery_errors = true
  #       ActionMailer::Base.smtp_settings = {
  #           :address => "smtp.gmail.com",
  #           :port => "587",
  #           :domain => "gmail.com",
  #           :enable_starttls_auto => true,
  #           :authentication => :login,
  #           :user_name => 'lava.v2104@gmail.com',
  #           :password => 'slana1995'
  #       }
  config.action_mailer.smtp_settings = {
      :address   => "smtp.mandrillapp.com",
      :port      => 587, # ports 587 and 2525 are also supported with STARTTLS
      :enable_starttls_auto => true, # detects and uses STARTTLS
      :user_name => "MANDRILL_Svetlana2104",
      :password  => "MANDRILL_IoSVmldT9O8ZqLOwr3fDXw", # SMTP password is any valid API key
      :authentication => 'login', # Mandrill supports 'plain' or 'login'
      :domain => 'gmail.com', # your domain to identify your server when connecting
    }

      config.action_mailer.raise_delivery_errors = true
=======

>>>>>>> 07fcd02de4b45aa36c2f0cd796957c78c072bf84
  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports and disable caching.
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = false

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
<<<<<<< HEAD
  config.assets.debug = false
=======
  config.assets.debug = true

>>>>>>> 07fcd02de4b45aa36c2f0cd796957c78c072bf84
  # Asset digests allow you to set far-future HTTP expiration dates on all assets,
  # yet still be able to expire them through the digest params.
  config.assets.digest = true

  # Adds additional error checking when serving assets at runtime.
  # Checks for improperly declared sprockets dependencies.
  # Raises helpful error messages.
  config.assets.raise_runtime_errors = true

  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true
end
