*** Settings ***
Library  OperatingSystem
Library  SeleniumLibrary

*** Test Cases ***
Check invoice manager page
    Open Browser  http://34.225.240.91/   chrome
    #Verify that the text "Invoice Managaer" is on the front page
