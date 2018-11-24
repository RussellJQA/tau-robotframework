*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Using a suite setup works
    Navigate To Home Page
    Comment    Using a suite setup to navigate to home page.


*** Keywords ***
Navigate To Home Page
    # Requires Chromedriver in Path (See earlier Excercise)
    Open Browser    http://34.225.240.91		Chrome
