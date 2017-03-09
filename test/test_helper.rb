ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

require "capybara/rails"

class ActiveSupport::TestCase
  fixtures :all
end

DatabaseCleaner.strategy = :truncation

class ActionDispatch::IntegrationTest
  include Capybara::DSL
  self.use_transactional_fixtures = false

  teardown do
    DatabaseCleaner.clean
    Capybara.reset_sessions!
    Capybara.use_default_driver
  end

  def t (*args)
    t = I18n.t(*args)
  end

  def label(scope)
    t(scope, :scope => "form")
  end
end
