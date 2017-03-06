require_relative 'boot'

require 'rails/all'
# Pick the frameworks you want:
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Recurrence
  class Application < Rails::Application


    config.i18n.load_path += Dir[Rails.root.join('config/locales/**/*/yml')]
    config.i18n.default_locale = "pt-BR"

    config.time_zone = 'Brasilia'

  end
end
