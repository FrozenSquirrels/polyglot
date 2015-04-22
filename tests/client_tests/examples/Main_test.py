from selenium import webdriver
from selenium.webdriver.common.keys import Keys
#import unittest 
import time

#class HomePageTest(unittest.TestCase):

    #def setUp(self):
driver = webdriver.Chrome()

driver.get("www.poly-glot.com:5555")




   # def test_title(self):
#driver.assertTrue('Home' == self.browser.title)
driver.find_element_by_name("home_name").send_keys("\n")

time.sleep(5)

    #def tearDown(self):
     #   self.browser.quit()

driver.close()
driver.quit()	


#if __name__ == '__main__':
  #  unittest.main()
