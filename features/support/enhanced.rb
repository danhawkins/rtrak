Webrat.configure do |config|
  config.mode = :selenium
  config.application_environment = :test
end

require 'database_cleaner'
require 'database_cleaner/cucumber'
DatabaseCleaner.strategy = :truncation

World(Webrat::Selenium::Matchers)