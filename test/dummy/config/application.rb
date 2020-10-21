# frozen_string_literal: true
require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)
require 'maintenance_tasks'

module Dummy
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults(6.0)

    if ENV['CLASSIC_AUTOLOADER'].present?
      puts '=> Using classic autoloader'
      config.autoloader = :classic
    end

    # Settings in config/environments/* take precedence over those specified
    # here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
