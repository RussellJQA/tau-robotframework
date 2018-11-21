*** Settings ***
Library  SeleniumLibrary
Resource  ${EXEC_DIR}/resources.robot
Suite Setup  Navigate To Home Page
Suite Teardown  Close Browser


*** Test Cases ***
Example Test Case
    Click Add Invoice
    Input Text  ?   ?

*** Keywords ***
Navigate To Home Page
    # Requires Chromedriver in Path (See earlier Excercise)
    Open Browser    ${SiteUrl}		${Browser}
    Set Selenium Implicit Wait    10 Seconds


Click Add Invoice
    Click Link  \#/addInvoice
    Page Should Contain Element     invoiceNo_add