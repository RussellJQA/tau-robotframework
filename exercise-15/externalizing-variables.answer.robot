*** Settings ***
Library  SeleniumLibrary
Resource  ${EXEC_DIR}/resources.robot
Suite Setup  Navigate To Home Page
Suite Teardown  Close Browser


*** Test Cases ***
Create an Invoice
    Click Link  \#/addInvoice

*** Keywords ***
Navigate To Home Page
    # Requires Chromedriver in Path (See earlier Excercise)
    Open Browser    ${SiteUrl}		${Browser}
