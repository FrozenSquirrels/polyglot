from selenium import webdriver
from selenium.webdriver.common.keys import Keys
#import unittest
import time

#class HomePageTest(unittest.TestCase):

   # def setUp(self):
        #self.browser = webdriver.Chrome()
        #self.browser.get('http://localhost:8080')
driver = webdriver.Chrome()

driver.get("http://localhost:8080/")



    #def test_contact_Us_link(self):
     	#link = self.browser.find_element_by_id('Contact_us_link')
    	#link.click()
driver.find_element_by_id("practice").send_keys("\n")
driver.execute_script("window.scrollTo(0, document.body.scrollHeight);")
time.sleep(30)
     
    #def tearDown(self):
    #	self.browser.quit()

driver.close()
driver.quit()	
#if __name__ == '__main__':
   # unittest.main()