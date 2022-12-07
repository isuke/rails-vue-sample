
Capybara.register_driver :headless_chrome do |app|
  options = Selenium::WebDriver::Chrome::Options.new
  options.args << '--headless'
  options.args << '--disable-gpu'
  options.args << '--no-sandbox'
  options.args << '--disable-dev-shm-usage'
  options.args << '--lang=ja-JP'
  options.args << '--window-size=1280,720'
  options.args << '--disable-dev-shm-usage'

  Capybara::Selenium::Driver.new(
    app,
    browser: :chrome,
    capabilities: options
  )
end

Capybara.configure do |config|
  config.default_driver    = :headless_chrome
  config.javascript_driver = :headless_chrome
  config.raise_server_errors = false
  config.default_max_wait_time = 5
end
