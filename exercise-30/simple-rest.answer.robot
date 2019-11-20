*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem
Library  RequestsLibrary
Library  String
Library  Collections

Resource  resources.robot
Suite Setup  Run Keywords   Navigate To Home Page
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

    # Confirm the invoice exists
    Create Session	invoice-manager     ${ApiUrl}
    ${resp}=  Get Request    invoice-manager    /invoices/${invoiceId}
    Should Be Equal As Strings	${resp.status_code}	200
    Dictionary Should Contain Value	${resp.json()}	${invoiceId}

    # Delete the invoice
    Create Session	invoice-manager2     ${ApiUrl}
    ${resp}=  Delete Request    invoice-manager2    /invoices/${invoiceId}
    Should Be Equal As Strings	${resp.status_code}	200


*** Keywords ***
Navigate To Home Page
    Open Browser    ${SiteUrl}		${Browser}
    ${invoiceId}=    Create Invoice Number
    Set Suite Variable   ${invoiceId}
    Set Selenium Speed    1.5 Seconds
    
Click Add Invoice
    Click Link    Add Invoice
    Page Should Contain Element     invoiceNo_add

Create Invoice Number
    ${RANUSER}    Generate Random String    10    [LETTERS]
    [Return]    ${RANUSER}
