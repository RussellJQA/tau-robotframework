*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem

Suite Setup  Navigate To Home Page
Suite Teardown  ?

*** Test Cases ***
Example Test Case
    Navigate To Home Page

*** Keywords ***
Navigate To Home Page
    # Requires Chromedriver in Path (See earlier Excercise)
    Open Browser    http://34.225.240.91		Firefox
