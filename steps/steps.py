import time
from selenium.common.exceptions import ElementNotInteractableException

from selenium.webdriver.support import expected_conditions as EC
from behave import *
from configparser import ConfigParser
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.wait import WebDriverWait

driver = None
use_step_matcher("re")

cf_parser = ConfigParser()
cf_parser1 = ConfigParser()
cf_parser.read("/airtel.git/automation-starter/properties/xpath.properties")
cf_parser1.read("/airtel.git/automation-starter/properties/config.properties")


@given("Open the browser and login to Siebel")
def step_impl(context):
    global driver
    driver = webdriver.Chrome("/airtel.git/automation-starter/driver/chromedriver")
    driver.maximize_window()  # Maximize the window
    url = cf_parser1.get("config", "URL")
    user = cf_parser1.get("config", "user_name")
    password = cf_parser1.get("config", "pass_word")
    driver.get(url)  # Getting the base URl homepage
    user_name = cf_parser.get("xpath", "Username")  # UserName Input field
    pass_word = cf_parser.get("xpath", "Password")  # Password Input field
    login_button = cf_parser.get("xpath", "Login")  # Login Input Field
    driver.find_element_by_xpath(user_name).send_keys(user)
    driver.find_element_by_xpath(pass_word).send_keys(password)
    driver.find_element_by_xpath(login_button).click()


@step('I wait for "(.*)"')
def step_impl(context, text):
    element = cf_parser.get("xpath", text)
    WebDriverWait(driver, 60).until(EC.presence_of_element_located((By.XPATH, element)))


@step('I click on "(.*)"')
def step_impl(context, text):
    element = cf_parser.get("xpath", text)
    click_element = driver.find_element_by_xpath(element)
    try:
        driver.execute_script("arguments[0].click();", click_element)
    except Exception:
        print("Exception click"+click_element)
        click_element.click()


@step('I input text "(.*)" to object "(.*)"')
def step_impl(context, text, obj):
    element = cf_parser.get("xpath", obj)
    try:
        driver.find_element_by_xpath(element).send_keys(text)
    except Exception:
        print("Exception input"+element)


@step('I force a sleep for "(.*)" seconds')
def step_impl(context, numb):
    # print(numb)
    wait = int(numb)
    time.sleep(wait)


@step('I scroll to object "(.*)"')
def step_impl(context, text):
    element = cf_parser.get("xpath", text)
    scroll_element = driver.find_element_by_xpath(element)
    driver.execute_script('arguments[0].scrollIntoView(true);', scroll_element)


@step('I clear object "(.*)"')
def step_impl(context, text):
    element = cf_parser.get("xpath", text)
    driver.find_element_by_xpath(element).clear()


@step('I get order number from pop up "(.*)" and save it to variable "OrderNumber"')
def step_impl(context, text):
    element = cf_parser.get("xpath", text)
    orderID = driver.find_element_by_xpath(element).text
    print(orderID)
