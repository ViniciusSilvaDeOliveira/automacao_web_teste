require 'cucumber' #informar todas as dependencias que vai rodar junto com o projeto, até a linha 7
require 'capybara/cucumber'
require 'capybara/dsl'
require 'capybara/rspec/matchers'
require 'capybara'
require 'selenium-webdriver'
require 'site_prism'
require 'pry'
require_relative 'mapa_de_elementos' #referente a configuracao do Page Objects

World(PageObjects) #referente a configuracao do Page Objects
World(Capybara::DSL)
World(Capybara::RSpecMatchers)

Capybara.configure do |config|
    config.default_driver = :selenium_chrome #configura para usar o Google chrome
    config.app_host = 'https://www.saucedemo.com' #passa o link que vamos automatizar
    config.default_max_wait_time = 5 #tempo padrão que vamos esperar os elementos na tela
end

Capybara.register_driver :chrome do |app|
    chrome_options = Selenium::WebDriver::Chrome::Options.new.tap do |options|        
    options.add_argument '--disable-gpu'        
    options.add_argument '--no-sandbox'        
    options.add_argument '--disable-site-isolation-trials'    
    options.add_argument '--start-maximized'
    end        
    Capybara::Selenium::Driver.new(app, browser: :chrome, options: chrome_options)   
end