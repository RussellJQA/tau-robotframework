*** Settings ***
Library  SeleniumLibrary

Suite Setup  Navigate To Home Page

*** Test Cases ***
Example Test Case

*** Keywords ***
Navigate To Home Page
    # Requires Chromedriver in Path (See earlier Excercise)
    Open Browser    http://34.225.240.91		Firefox
