
###########################
# Created by: Ely Shaffir #
###########################

import time

from selenium import webdriver
from selenium.webdriver import ActionChains
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.common.keys import Keys

EXE_PATH = r'C:\Program Files\PythonPlugins\chromedriver_win32\chromedriver.exe'


class SeleniumManager:

    def __init__(self, url, headless=False):
        options = Options()
        options.headless = headless
        self.driver = webdriver.Chrome(executable_path=EXE_PATH, chrome_options=options)
        self.load_page(url)

    def load_page(self, url):
        self.driver.get(url)

    def refresh(self):
        self.driver.refresh()

    def login_page(self, email_element, email_str, pw_element, pw_str, submit_btn):
        self.type_into(email_element, email_str)
        self.type_into(pw_element, pw_str)
        self.click(submit_btn)

    def type_into(self, element_id, value):
        element = self.driver.find_element_by_id(element_id)
        element.send_keys(value)

    def replace_into(self, element_id, value):
        element = self.driver.find_element_by_id(element_id)
        element.clear()
        element.send_keys(value)

    def type_and_return(self, element_id, value):
        self.type_into(element_id, value + Keys.RETURN)

    def click(self, element_id):
        self.driver.find_element_by_id(element_id).click()

    def tab(self, amount=1):
        self.type_key(Keys.TAB, amount)

    def space(self, amount=1):
        self.type_key(Keys.SPACE, amount)

    def type_string_and_return(self, string):
        self.type_string(string)
        self.type_key(Keys.RETURN)

    def type_string(self, string):
        for c in string:
            self.type_key(c)

    def down_arrow(self, amount=1, wait=.1):
        self.type_key(Keys.ARROW_DOWN, amount, wait)

    def up_arrow(self, amount=1, wait=.1):
        self.type_key(Keys.ARROW_UP, amount, wait)

    def type_key(self, key, amount=1, wait=.1):
        action = ActionChains(self.driver)
        for _ in range(amount):
            action.send_keys(key)
            time.sleep(wait)
        action.perform()

    def find_elements_recursively_class(self, tag, class_name):
        return self.driver.find_elements_by_xpath(
            '//' + tag + '[@class=\'' + class_name + '\']')

    def find_elements_recursively_contains_class(self, tag, class_name):
        return self.driver.find_elements_by_xpath(
            '//' + tag + '[contains(@class,\'' + class_name + '\')]')

    def find_elements_recursively_element(self, tag):
        return self.driver.find_elements_by_tag_name(tag)

    @staticmethod
    def get_all_sub_elements(element):
        return element.find_elements_by_xpath('.//*')

    def get_cookies(self):
        return self.driver.get_cookies()

    def add_cookies(self, cks: list):
        for ck in cks:
            self.add_cookie(ck)

    def add_cookie(self, ck: dict):
        self.driver.add_cookie(ck)

    def screenshot(self, path):
        self.driver.save_screenshot(path)

    def close(self):
        self.driver.close()
