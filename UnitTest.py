from selenium import webdriver 
import time

driver = webdriver.Chrome()

driver.get("http://localhost:8080/project")

driver.find_element_by_id("username").send_keys("Reem")
driver.find_element_by_id("password").send_keys("rrr\n")

time.sleep(30)

driver.close()
driver.quit()