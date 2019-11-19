*** Settings ***
Library  SeleniumLibrary

Suite Setup  Navigate To Home Page
Suite Teardown  Close Browser


*** Test Cases ***
Create an Invoice
  Comment    Can you move the variables to a location outside of this test file?

*** Keywords ***
Navigate To Home Page
    Open Browser    ${SiteUrl}		${Browser}

*** Variables ***
${SiteUrl}    http://34.225.240.91
${Browser}     Chrome
