#Gems e arquivos necessarios
require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec/matchers'
require 'selenium-webdriver'
require 'site_prism'
require 'rspec'
require_relative 'page_helpper.rb'
require_relative 'helper.rb'
# require 'chromedriver-helper'

#Deixa global
World(Capybara::DSL)
World(Capybara::RSpecMatchers)
World(Pages)

#Faz Headless pegar a variavel environment_type 
HEADLESS = ENV['HEADLESS']
ENVIRONMENT_TYPE = ENV['ENVIRONMENT_TYPE']

#configuração para rodar os arquivos com ".yml" do diretório
CONFIG = YAML.load_file(File.dirname(__FILE__) +
"/data/#{ENVIRONMENT_TYPE}.yml")

#app que vai rodar no driver
Capybara.register_driver :selenium do |app|

#if para rodar o app no browser sem headless
if HEADLESS.eql?('sem_headless')
  Capybara::Selenium::Driver.new(
    app,
    browser: :chrome,
    desired_capabilities: Selenium::WebDriver::Remote::Capabilities.chrome(
      'chromeOptions' => { 'args' => ['--disable-infobars',
                                      'window-size=1600,1024'] }
    )
  )

#elsif para rodar o app no browser com headless

elsif HEADLESS.eql?('com_headless')
  Capybara::Selenium::Driver.new(
    app,
    browser: :chrome,
    desired_capabilities: Selenium::WebDriver::Remote::Capabilities.chrome(
      'chromeOptions' => { 'args' => ['headless', 'disable-gpu',
                                      '--disable-infobars',
                                      'window-size=1600,1024'] }
    )
  )
end
end

#Configuração de tempo de duração do teste, da url que será iniciada 
Capybara.configure do |config|
  config.default_driver = :selenium
  config.default_max_wait_time = 10
  config.app_host = CONFIG['url_home']
  
end
