*** Settings ***
Library  OperatingSystem
Library  SeleniumLibrary

*** Test Cases ***
Check invoice manager page
    Comment    Checking that we're on the invoice manager page
    Set Environment Variable    PATH  %{PATH}:${EXECDIR}/../drivers
    Open Browser  http://34.225.240.91/   chrome
    #Verify that the text "Invoice Managaer" is on the front page
