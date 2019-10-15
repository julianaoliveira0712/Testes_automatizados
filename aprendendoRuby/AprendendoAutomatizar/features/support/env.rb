require 'cucumber'
require 'capybara/cucumber'
require 'selenium-webdriver'

=begin
Chama o objeto Capybara passsando a configure dele dentro de um aargumento/parametro config
Depois especificamos o driver padrão do capybara, o capybara já vem com 3 drivers padrão, sendo eles o
selenium que roda no firefox, o selenium_chrome que roda no chrome e o selenium_chorme_healess que roda sem o uso da gpu
Em seguida informamos no app_host a url do site e por fim, o tempo default que vamos esperar a url na tela
=end

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = 'http://moodle.bandtec.com.br'
    config.default_max_wait_time = 5
end