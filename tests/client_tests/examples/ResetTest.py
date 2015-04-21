from selenium import webdriver
from selenium.webdriver.common.keys import Keys
#import unittest
import time
from selenium import webdriver 
#from selenium.webdriver.common.keys import Keys
import time

driver = webdriver.Chrome()

driver.get("http://localhost:8080/")

driver.find_element_by_id("username").send_keys("Nathan")
driver.find_element_by_id("password").send_keys("nnn")
time.sleep(5)
driver.find_element_by_id("reset").send_keys("\n")
time.sleep(30)

driver.close()
driver.quit()