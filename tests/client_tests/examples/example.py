from selenium import webdriver
from selenium.webdriver.common.keys import Keys
import unittest

class HomePageTest(unittest.TestCase):

    def setUp(self):
        self.browser = webdriver.Chrome()
        self.browser.get('http://localhost:8080')

    def test_title(self):
        self.assertTrue('Home' == self.browser.title)

    def tearDown(self):
        self.browser.quit()


if __name__ == '__main__':
    unittest.main()
