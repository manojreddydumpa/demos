require 'rubygems'
require 'selenium-webdriver'

driver = Selenium::WebDriver.for :firefox
driver.get "http://localhost:3000"

element = driver.find_element(:id, "username").send_keys "manojreddy"
element = driver.find_element(:id, "password")
element.send_keys "vsspl"
element.submit

driver.navigate.to "http://localhost:3000/subjects"
driver.find_element(:id, "subnew").click

element = driver.find_element(:id, "subject_name")
element.clear
element.send_keys "Fourth Subject"
element = driver.find_element(:id, "subject_position")
element.send_keys "4"
driver.find_element(:id, "subject_visible").click
element.submit

# driver.navigate.to "http://localhost:3000/subjects/show/980190969"
