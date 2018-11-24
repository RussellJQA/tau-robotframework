*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem

Resource  ${EXEC_DIR}/resources.robot
Suite Setup  Navigate To Home Page
Suite Teardown  Run Keywords    Delete Invoice  Close Browser


*** Test Cases ***
Create an Invoice


*** Keywords ***
Navigate To Home Page
    # Requires Chromedriver in Path (See earlier Excercise)
    Set Environment Variable    PATH  %{PATH}:${EXECDIR}/../drivers
    Open Browser    ${SiteUrl}		${Browser}
    Set Selenium Implicit Wait    10 Seconds
    Set Selenium Speed     .25 seconds


Click Add Invoice
    Click Link  \#/addInvoice
    Page Should Contain Element     invoiceNo_add

Delete Invoice
    Click Link  css:[id^='invoiceNo_paulm'] > a
    Click Button    deleteButton