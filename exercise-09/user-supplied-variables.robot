*** Settings ***
Library  SeleniumLibrary
Suite Setup  Navigate To Home Page
Suite Teardown  Close Browser


*** Test Cases ***
Create an Invoice
  Comment    This test should use variables for the url and the browser.

*** Keywords ***
Navigate To Home Page
    # Requires Chromedriver in Path (See earlier Excercise)
    Open Browser    http://34.225.240.91		Chrome
