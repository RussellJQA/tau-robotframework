*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem

Suite Setup  Navigate To Home Page

*** Test Cases ***
Using a suite teardown works
  Comment    Using a suite teardown to navigate to home page.

*** Keywords ***
Navigate To Home Page
    # Requires Chromedriver in Path (See earlier Excercise)
    Open Browser    http://34.225.240.91		Chrome
