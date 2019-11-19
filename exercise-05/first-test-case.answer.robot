*** Settings ***
Library  OperatingSystem
Library  SeleniumLibrary

*** Test Cases ***
Check invoice manager page
    Comment    Checking that we're on the invoice manager page
    Open Browser  http://34.225.240.91/   chrome
    Page Should Contain     Invoice Manager
