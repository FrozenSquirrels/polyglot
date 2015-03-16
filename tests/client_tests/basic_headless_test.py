from pyvirtualdisplay import Display
from selenium import webdriver
from selenium.webdriver.common.keys import Keys
import unittest

display = Display(visible=0, size=(1024,768))
display.start()

class HomePageTest(unittest.TestCase):
    chromePath = '/home/vagrant/polyglot/node_modules/chromedriver/'

    def setUp(self):
	print self.chromePath
        self.browser = webdriver.Chrome()
        self.browser.get('http://localhost:1337')

    def test_title(self):
        self.assertTrue('Polyglot' in self.browser.title)

    def tearDown(self):
        self.browser.quit()


if __name__ == '__main__':
    unittest.main()
