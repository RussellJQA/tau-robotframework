*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem

Resource  ${EXEC_DIR}/resources.robot
Suite Setup  Run Keywords   Navigate To Home Page  Delete Invoice
Suite Teardown  Run Keywords    Close Browser


*** Test Cases ***
Example Test Case
    Click Add Invoice
    Input Text  css:#invoiceNo_add > input   ${my name}'s invoice
    Input Text  css:#compName_add > input   my example company
    Input Text  css:#typeofwork_add > input   plumbing
    Input Text  css:#cost_add > input   34.00
    Input Text  css:#invoice_dueDate > input   2018-10-31
    Input Text  css:#comments_add > input   Unclogged Drain
    Select From List By Value   css:#status_add > select    Past Due
    Click Button    id:createButton

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
    ${invoice_count}=   Get Element Count    css:[id^='invoiceNo_paulm'] > a
    Log To Console  ${invoice_count}
    Run Keyword If  ${invoice_count} > 0    Run Keywords
        Click Link  css:[id^='invoiceNo_paulm'] > a
        Click Button    deleteButton
