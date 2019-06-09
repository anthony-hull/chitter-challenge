require 'simplecov'
require 'simplecov-console'

require 'capybara'
require 'capybara/rspec'
require './app'
# require './spec/db_helper'
require 'pry-byebug'

ENV['ENVIRONMENT'] = 'test'
ENV['RACK_ENV'] = 'test'
Capybara.app = Chitter

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::Console,
  # Want a nice code coverage website? Uncomment this next line!
  # SimpleCov::Formatter::HTMLFormatter
])
SimpleCov.start

RSpec.configure do |config|
  config.after(:suite) do

  end
end
