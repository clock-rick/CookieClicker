require 'selenium-webdriver'
require_relative '../Pages/main_page'
require_relative '../Pages/abstract_base_page'

mp = MainPage.new(:firefox)
mp.clear_cookie_message
mp.change_store_name("Rick's Bakery")