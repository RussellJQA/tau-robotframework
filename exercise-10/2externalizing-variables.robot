*** Settings ***
Library  SeleniumLibrary

Suite Setup  Navigate To Home Page
Suite Teardown  Close Browser

Resource  ${EXECDIR}/variables.robot
#Resource  ${EXEC_DIR}/variables.robot
*** Test Cases ***
Create an Invoice
  Comment    Can you move the variables to a location outside of this test file?

*** Keywords ***
Navigate To Home Page
    Log To Console    ${paulsMessage} 1
    Open Browser    ${SiteUrl}		${Browser}

*** Variables ***
${SiteUrl}    http://34.225.240.91
${Browser}     Chrome
