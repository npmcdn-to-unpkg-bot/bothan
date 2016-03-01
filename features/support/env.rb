# Generated by cucumber-sinatra. (2013-12-03 12:11:29 +0000)

require 'coveralls'
Coveralls.wear!

require 'dotenv'
Dotenv.load

ENV['RACK_ENV'] = 'test'
ENV['METRICS_API_USERNAME'] = 'foo'
ENV['METRICS_API_PASSWORD'] = 'bar'

require File.join(File.dirname(__FILE__), '..', '..', 'lib/metrics-api.rb')

require 'capybara'
require 'capybara/cucumber'
require 'rspec'
require 'cucumber/api_steps'
require 'cucumber/rspec/doubles'
require 'database_cleaner'
require 'database_cleaner/cucumber'
require 'timecop'

DatabaseCleaner.strategy = :truncation

Capybara.app = MetricsApi

class MetricsApiWorld
  include Capybara::DSL
  include RSpec::Expectations
  include RSpec::Matchers

  def app
    MetricsApi
  end
end

World do
  MetricsApiWorld.new
end
