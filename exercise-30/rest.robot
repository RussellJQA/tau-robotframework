*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem
Library  RequestsLibrary
Library  String
Library  Collections

Resource  resources.robot
Suite Setup  Run Keywords   Navigate To Home Page  Delete Invoice If Exists
Suite Teardown  Run Keywords    Close Browser

*** Test Cases ***
Create an Invoice
    Click Add Invoice
    Input Text  invoice   ${invoiceId}
    Input Text  company   my example company
    Input Text  type   plumbing
    Input Text  price   34.00
    Input Text  dueDate   2018-10-31
    Input Text  comment   Unclogged Drain
    Select From List By Value   selectStatus    Past Due
    Click Button    createButton
    Confirm Invoice Exists

*** Keywords ***
Navigate To Home Page
    Open Browser    ${SiteUrl}		${Browser}
    ${invoiceId}=    Create Invoice Number
    Set Suite Variable   ${invoiceId}
    Set Selenium Speed    1.5 Seconds
    
Click Add Invoice
    Click Link    Add Invoice
    Page Should Contain Element     invoiceNo_add

Confirm Invoice Exists
    Create Session	invoice-manager     ${ApiUrl}
    ${resp}=  Get Request    invoice-manager    /invoices/${invoiceId}
    Should Be Equal As Strings	${resp.status_code}	200
    Dictionary Should Contain Value	${resp.json()}	${invoiceId}

Delete Invoice
    [Arguments]  ${invoiceToDelete}
    Click Element  ${invoiceToDelete}
    Click Button    deleteButton

Delete Invoice If Exists
    ${fullInvoiceId}=  Catenate  SEPARATOR=  invoiceNo_  ${invoiceId}
    ${invoice_count}=   Get Element Count    id:${fullInvoiceId}
    Run Keyword If      ${invoice_count} > 0    Delete Invoice  ${fullInvoiceId}

Create Invoice Number
    ${RANUSER}    Generate Random String    10    [LETTERS]
    [Return]    ${RANUSER}
