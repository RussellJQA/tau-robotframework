*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem
Library  RequestsLibrary
Library  String
Library  Collections

Suite Setup  Run Keywords   
Suite Teardown  Run Keywords    Close Browser  

*** Test Cases ***
Create an Invoice
    Open Browser    http://34.225.240.91		chrome
    ${invoiceId}=    Generate Random String    10    [LETTERS]
    Set Suite Variable   ${invoiceId}
    Set Selenium Speed    0.5 Seconds
    Click Link    Add Invoice
    Page Should Contain Element     invoiceNo_add
    Input Text  invoice   ${invoiceId}
    Input Text  company   my example company
    Input Text  type   plumbing
    Input Text  price   34.00
    Input Text  dueDate   2018-10-31
    Input Text  comment   Unclogged Drain
    Select From List By Value   selectStatus    Past Due
    Click Button    createButton
    Create Session	invoice-manager     http://34.197.198.114:8081
    ${resp}=  Get Request    invoice-manager    /invoices/${invoiceId}
    Should Be Equal As Strings  ${resp.status_code}	 200
    Dictionary Should Contain Value	 ${resp.json()}	 ${invoiceId}
    ${resp}=  Delete Request    invoice-manager    /invoices/${invoiceId}
    Should Be Equal As Strings	${resp.status_code}	 200
    ${resp}=  Get Request    invoice-manager    /invoices/${invoiceId}
    Should Be Equal As Strings  ${resp.status_code}  404

*** Keywords ***

