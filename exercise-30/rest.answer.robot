*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem
Library  RequestsLibrary
Library  String
Library  Collections

Resource  resources.robot
Suite Setup  Run Keywords   Navigate To Home Page  Delete Invoice If Exists
Suite Teardown  Run Keywords    Close Browser  Delete Invoice If Exists

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
    ${resp}=  Get Invoice Response
    Should Be Equal As Strings	${resp.status_code}	200
    [RETURN]  Dictionary Should Contain Value	${resp.json()}	${invoiceId}

Get Invoice Response
    Create Session	invoice-manager     ${ApiUrl}
    ${resp}=  Get Request    invoice-manager    /invoices/${invoiceId}
    [RETURN]  ${resp}

Delete Invoice
    [Arguments]  ${invoiceToDelete}
    Create Session	invoice-manager     ${ApiUrl}
    ${resp}=  Delete Request    invoice-manager    /invoices/${invoiceToDelete}
    Should Be Equal As Strings	${resp.status_code}	200

Delete Invoice If Exists
    ${responseCode}=  Get Invoice Response
    Run Keyword If      ${responseCode.status_code} == 200    Delete Invoice  ${invoiceId}

Create Invoice Number
    ${RANUSER}    Generate Random String    10    [LETTERS]
    [Return]    ${RANUSER}
