*** Settings ***
Library  SeleniumLibrary
Suite Setup  Navigate To Home Page
Suite Teardown  Close Browser


*** Test Cases ***
Create an Invoice
  Comment    This test uses variables!


*** Keywords ***
Navigate To Home Page
    # Requires Chromedriver in Path (See earlier Excercise)
    Open Browser    ${SiteUrl}		${Browser}

*** Variables ***
${SiteUrl}    http://34.225.240.91
${Browser}     Chrome
