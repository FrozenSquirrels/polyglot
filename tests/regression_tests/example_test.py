#!!!!!!!!!!!!!
#MAKE SURE APP IS RUNNING ON LOCALHOST BEFORE ATTEMPTING REGRESSION TESTS
#OTHERWISE IT WON'T WORK
#!!!!!!!!!!!!!
from selenium import webdriver
from selenium.webdriver.common.keys import Keys

browser = webdriver.Firefox()
browser.get('http://localhost:1337')
assert('Polyglot' in browser.title)

browser.quit()
