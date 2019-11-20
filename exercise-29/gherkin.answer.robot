*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem

Resource  resources.robot
Suite Setup  Run Keywords   Navigate To Home Page  Delete Invoice If Exists
Suite Teardown  Run Keywords    Close Browser


*** Test Cases ***
Create an Invoice
    Given I Need to Create an Invoice
    When I Create a Basic Invoice
    Then I Should See a Basic Invoice in the Invoice List

*** Keywords ***
I Should See a Basic Invoice in the Invoice List
    I Should See the Invoice in the Invoice List    paulm-default-invoice

I Should See the Invoice in the Invoice List
    [Arguments]  ${Name}
    Page Should Contain     ${Name}

I Create a Basic Invoice
    I Create an Invoice      paulm-default-invoice     my example company     plumbing     33.00     2018-10-31   Unclogged Drain  Past Due

I Create an Invoice
    [Arguments]  ${Name}    ${Company}  ${Type}     ${Cost}     ${Date}     ${Comments}     ${Status}
    Input Text  invoice   ${Name}
    Input Text  company   ${Company}
    Input Text  type   ${Type}
    Input Text  price   ${Cost}
    Input Text  dueDate   ${Date}
    Input Text  comment   ${Comments}
    Select From List By Value   selectStatus    ${Status}
    Click Button    createButton

Navigate To Home Page
    Open Browser    ${SiteUrl}		${Browser}
    Set Selenium Speed    1.5 Seconds
    

I Need to Create an Invoice
    Click Link  Add Invoice
    Page Should Contain Element     invoiceNo_add

Delete Invoice
    [Arguments]  ${invoice_element}
    Click Link  ${invoice_element}
    Click Button    deleteButton


Delete Invoice If Exists
    ${invoice_count}=   Get Element Count    css:[id^='invoiceNo_paulm'] > a
    Run Keyword If      ${invoice_count} > 0    Delete Invoice  css:[id^='invoiceNo_paulm'] > a
