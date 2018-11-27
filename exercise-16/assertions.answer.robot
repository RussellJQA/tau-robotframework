*** Settings ***
Library  SeleniumLibrary
Resource  ${EXEC_DIR}/resources.robot
Suite Setup  Navigate To Home Page
Suite Teardown  Close Browser


*** Test Cases ***
Create an Invoice
    Click Link  Add Invoice
    Page Should Contain Element     invoiceNo_add

*** Keywords ***
Navigate To Home Page
    # Requires Chromedriver in Path (See earlier Excercise)
    Open Browser    ${SiteUrl}		${Browser}
    #slow execution down if you want to see it runnning with the following:
    Set Selenium Speed    0.5 Seconds
    Set Selenium Implicit Wait    10 Seconds


# Click Add Invoice
#     Click Link  Add Invoice
#     Page Should Contain Element     invoiceNo_add
