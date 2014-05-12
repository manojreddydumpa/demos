require 'rubygems'
require 'selenium-webdriver'

driver = Selenium::WebDriver.for :firefox
driver.get "http://localhost:3000"

element = driver.find_element(:id, "username").send_keys "manojreddy"
element = driver.find_element(:id, "password")
element.send_keys "vsspl"
element.submit

driver.navigate.to "http://localhost:3000/subjects"

driver.navigate.to "http://localhost:3000/pages?subject_id=980190963"

driver.navigate.to "http://localhost:3000/sections?page_id=980190963"

driver.navigate.to "http://localhost:3000/sections/show/980190963?page_id=980190963"
