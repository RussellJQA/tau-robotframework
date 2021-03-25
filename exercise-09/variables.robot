*** Settings ***
Library  SeleniumLibrary
Suite Setup  Navigate To Home Page
Suite Teardown  Close Browser


*** Test Cases ***
Using Variables
  Comment    This test should use variables for the url and the browser.
  Page Should Contain     Invoice Manager

*** Keywords ***
Navigate To Home Page
    Open Browser    ${url}		${browser}

*** Variables ***
${url}  http://34.225.240.91
${browser}  Chrome
