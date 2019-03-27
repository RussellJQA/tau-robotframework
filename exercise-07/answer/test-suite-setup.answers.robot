*** Settings ***
Library  SeleniumLibrary

Test Setup  Navigate To Home Page

*** Test Cases ***

Page contains invoice
  Page Should Contain    Invoice

Page contains Manager
    Page Should Contain    Manager

*** Keywords ***
Navigate To Home Page
    # Requires Chromedriver in Path (See earlier Excercise)
    Open Browser    http://34.225.240.91		chrome
