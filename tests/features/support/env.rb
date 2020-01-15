require 'capybara/cucumber'
require 'selenium-webdriver'

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = 'http://www.buscacep.correios.com.br'
   config.default_max_wait_time = 2
end