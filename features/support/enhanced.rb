Webrat.configure do |config|
  config.mode = :selenium
  config.application_environment = :test
end

World(Webrat::Selenium::Matchers)

Before do
  # truncate your tables here, since you can't use transactional fixtures
  # rake("db:refresh")
end
