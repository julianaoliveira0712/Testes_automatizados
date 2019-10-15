require 'cucumber'
require 'capybara/cucumber'
require 'selenium-webdriver'

Capyraba.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = 'https://automacaocombatista.herokuapp.com'
    config.default_max_time = 5