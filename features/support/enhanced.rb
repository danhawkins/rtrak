Webrat.configure do |config|
  config.mode = :selenium
  config.application_environment = :test
end

require 'database_cleaner'
require 'database_cleaner/cucumber'
DatabaseCleaner.strategy = :truncation

World(Webrat::Selenium::Matchers)

After do
  # truncate your tables here, since you can't use transactional fixtures
  
end
