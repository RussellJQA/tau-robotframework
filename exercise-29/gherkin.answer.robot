*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem

Resource  ${EXEC_DIR}/resources.robot
Suite Setup  Navigate To Home Page
Suite Teardown  Run Keywords    Delete Invoice  Close Browser


*** Test Cases ***
Create an Invoice
    Given Invoice Creation Page Is Open
    When Invoice Details Are Set To  paulm-default-invoice     my example company     plumbing     33.00     2018-10-31   Unclogged Drain  Past Due
    Then Invoice Named Should Exist     paulm-default-invoice

*** Keywords ***
Invoice Named Should Exist
    [Arguments]  ${Name}
    Page Should Contain     ${Name}

Invoice Details Are Set To
    [Arguments]  ${Name}    ${Company}  ${Type}     ${Cost}     ${Date}     ${Comments}     ${Status}
    Input Text  css:#invoiceNo_add > input   ${Name}
    Input Text  css:#compName_add > input   ${Company}
    Input Text  css:#typeofwork_add > input   ${Type}
    Input Text  css:#cost_add > input   ${Cost}
    Input Text  css:#invoice_dueDate > input   ${Date}
    Input Text  css:#comments_add > input   ${Comments}
    Select From List By Value   css:#status_add > select    ${Status}
    Click Button    id:createButton

Navigate To Home Page
    # Requires Chromedriver in Path (See earlier Excercise)
    Set Environment Variable    PATH  %{PATH}:${EXECDIR}/../drivers
    Open Browser    ${SiteUrl}		${Browser}
    Set Selenium Implicit Wait    10 Seconds
    Set Selenium Speed     .25 seconds


Invoice Creation Page Is Open
    Click Link  \#/addInvoice
    Page Should Contain Element     invoiceNo_add

Delete Invoice
    Click Link  css:[id^='invoiceNo_paulm'] > a
    Click Button    deleteButton