*** Settings ***
Library  SeleniumLibrary

Suite Setup  Navigate To Home Page
Suite Teardown  Close Browser


*** Test Cases ***
Using a suite teardown works
  Comment    Using a suite teardown to navigate to home page.

*** Keywords ***
Navigate To Home Page
    Open Browser    http://34.225.240.91		chrome