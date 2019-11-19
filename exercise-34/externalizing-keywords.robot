*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem

Resource  resources.robot
Resource  invoice-details-page.robot

Suite Setup  Run Keywords   Navigate To Home Page  Delete Invoice If Exists
Suite Teardown  Run Keywords    Close Browser


*** Test Cases ***
Create an Invoice
    Given Invoice Creation Page Is Open
    When Invoice Details Are Set To  paulm-default-invoice     my example company     plumbing     33.00     2018-10-31   Unclogged Drain  Past Due
    Then Invoice Named Should Exist     paulm-default-invoice

*** Keywords ***
Invoice Named Should Exist
    [Arguments]  ${Name}
    Page Should Contain     ${Name}

Navigate To Home Page
    Open Browser    ${SiteUrl}		${Browser}
    Set Selenium Speed    1.5 Seconds
    


Invoice Creation Page Is Open
    Click Link  Add Invoice
    Page Should Contain Element     invoiceNo_add

Delete Invoice
    [Arguments]  ${invoice_element}
    Click Link  ${invoice_element}
    Click Button    deleteButton

Delete Invoice If Exists
    ${invoice_count}=   Get Element Count    css:[id^='invoiceNo_paulm'] > a
    Run Keyword If      ${invoice_count} > 0    Delete Invoice  css:[id^='invoiceNo_paulm'] > a
