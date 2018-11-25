*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem

Resource  ${EXEC_DIR}/resources.robot
Suite Setup  Run Keywords   Navigate To Home Page  Delete Invoice If Exists
Suite Teardown  Run Keywords    Close Browser


*** Test Cases ***
Create an Invoice
    Create Invoice  paulm-plain-invoice     my example company     plumbing    34.00      2018-10-31   Unclogged Drain  Past Due
    Run Keyword And Expect Error    *   Create Invoice  paulm-empty-invoice     my example company     plumbing     ${EMPTY}     2018-10-31   Unclogged Drain  Past Due
    Handle Alert
    Run Keyword And Expect Error    *   Create Invoice  paulm-negative-invoice     my example company     plumbing    -20.00      2018-10-31   Unclogged Drain  Past Due
    Handle Alert

*** Keywords ***
Create Invoice
    [Arguments]  ${Name}    ${Company}  ${Type}     ${Cost}     ${Date}     ${Comments}     ${Status}
    Click Add Invoice
    Input Text  invoice   ${Name}
    Input Text  company   ${Company}
    Input Text  type   ${Type}
    Input Text  price   ${Cost}
    Input Text  dueDate   ${Date}
    Input Text  comment   ${Comments}
    Select From List By Value   selectStatus    ${Status}
    Click Button    createButton
    Page Should Contain     ${Name}


Navigate To Home Page
    # Requires Chromedriver in Path (See earlier Excercise)
    Set Environment Variable    PATH  %{PATH}:${EXECDIR}/../drivers
    Open Browser    ${SiteUrl}		${Browser}
    Set Selenium Implicit Wait    10 Seconds
    Set Selenium Speed     .25 seconds


Click Add Invoice
    Click Link  Add Invoice
    Page Should Contain Element     invoiceNo_add

Delete Invoice
    [Arguments]  ${invoice_element}
    Click Link  ${invoice_element}
    Click Button    deleteButton


Delete Invoice If Exists
    ${invoice_count}=   Get Element Count    css:[id^='invoiceNo_paulm'] > a
    Run Keyword If      ${invoice_count} > 0    Delete Invoice  css:[id^='invoiceNo_paulm'] > a
