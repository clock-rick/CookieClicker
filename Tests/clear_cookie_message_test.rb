require 'selenium-webdriver'
require_relative '../Pages/abstract_base_page'
require_relative '../Pages/main_page'

mp = MainPage.new(:firefox)
mp.clear_cookie_message