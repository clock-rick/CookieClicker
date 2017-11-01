class AbstractBasePage
  def initialize(browser)
    @base_url = 'http://orteil.dashnet.org/cookieclicker/'
    # @url_extension = url_extension
    @browser = browser
    @driver = Selenium::WebDriver::Driver.for @browser
    @driver.navigate.to @base_url
    @driver.manage.timeouts.page_load = 10_000
    @driver.switch_to.window(@driver.window_handles.last)
    @driver.manage.window.maximize
  end

  def clear_and_send(web_element, text)
    element = @driver.find_element(:id, web_element)
    element.clear
    element.send_keys(text)
  end
end