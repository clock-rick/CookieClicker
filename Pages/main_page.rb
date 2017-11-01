require 'selenium-webdriver'
require 'colorize'
require_relative 'abstract_base_page'


class MainPage < AbstractBasePage

  def clear_cookie_message
    begin
      until @driver.find_element(css: '.cc_btn') == false
        @driver.find_element(css: '.cc_btn').click
      end
    rescue Selenium::WebDriver::Error::NoSuchElementError
      false
    rescue Selenium::WebDriver::Error::ElementNotInteractableError
      true
    end
  end
  def change_store_name(store_name)
    @driver.find_element(id: 'bakeryName').click
    clear_and_send('bakeryNameInput', store_name)
    @driver.find_element(id: 'promptOption0').click
  end

  def cookie_click
    big_cookie = @driver.find_element(id: 'bigCookie')
    until big_cookie == true do
      big_cookie.click
    end
  end
end