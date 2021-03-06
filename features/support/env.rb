require "capybara"
require "capybara/cucumber"
require "faker"

require_relative "helpers"

#Criando uma constante com o ambiente a ser executado, conforme o default do cucumber.yml
CONFIG = YAML.load_file(File.join(Dir.pwd, "features/support/config/#{ENV["CONFIG"]}"))

BROWSER = ENV["BROWSER"]

case ENV["BROWSER"]
when "firefox"
  @driver = :selenium
when "chrome"
  @driver = :selenium_chrome
when "firefox_headless"
  @driver = :selenium_headless
when "chrome_headless"
  Capybara.register_driver :selenium_chrome_headless do |app|
    Capybara::Selenium::Driver.load_selenium
    browser_options = ::Selenium::WebDriver::Chrome::Options.new.tap do |opts|
      opts.args << "--headless"
      opts.args << "--disable-gpu"
      opts.args << "--no-sandbox"
      opts.args << "--desable-dev-shm-usage"
      opts.args << "--disable-site-isolation-trials"
      opts.args << "--disable-software-rasterizer"
    end
    Capybara::Selenium::Driver.new(app, browser: :chrome, options: browser_options)
  end

  @driver = :selenium_chrome_headless
else
  raise "Variável de @drive está vazia, não é possível abrir navegador."
end

Capybara.configure do |config|
  config.default_driver = @driver
  config.app_host = CONFIG["url"]
  config.default_max_wait_time = 15
end