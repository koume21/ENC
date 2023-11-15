# This file is used by Rack-based servers to start the application.

require_relative "config/environment"
# config.action_mailer.default_url_options = { protocol: 'https', host: 'login/login' }
run Rails.application
Rails.application.load_server
