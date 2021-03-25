*** Settings ***
Library  OperatingSystem
Library  SeleniumLibrary

*** Test Cases ***
Check invoice manager page
    Comment    We're learning how to create a custom keyword.
    Navigate to Home Page
    Page Should Contain     Invoice Manager

*** Keywords ***
Navigate to Home Page
    Open Browser  http://34.225.240.91/   chrome
