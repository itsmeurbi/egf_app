require 'simplecov'

SimpleCov.start do
  add_filter('config/')
  add_filter('app/channels/application_cable/channel.rb')
  add_filter('app/channels/application_cable/connection.rb')
end

ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'
require 'mocha/minitest'
require_relative 'support/helpers/sign_in_helper'

class ActiveSupport::TestCase
  # Run tests in parallel with specified workers
  parallelize(workers: :number_of_processors)

  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  include SignInHelper

  # Add more helper methods to be used by all tests here...
end
