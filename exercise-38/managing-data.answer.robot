*** Settings ***
Library  String
Library  SeleniumLibrary
Resource  resources.robot
Suite Setup  Navigate To Home Page
Suite Teardown  Close Browser


*** Test Cases ***
Create an Invoice
    Click Add Invoice
    ${invoiceNumber}   Create Invoice Number
    Input Text  invoice   ${invoiceNumber}
    Input Text  company   my example company
    Input Text  type   plumbing
    Input Text  price   34.00
    Input Text  dueDate   2018-10-31
    Input Text  comment   Unclogged Drain
    Select From List By Value   selectStatus    Past Due

*** Keywords ***
Navigate To Home Page
    Open Browser    ${SiteUrl}		${Browser}
    Set Selenium Speed    1.5 Seconds

Click Add Invoice
    Click Link  Add Invoice
    Page Should Contain Element     invoiceNo_add

Create Invoice Number
    ${RANUSER}    Generate Random String    10    [LETTERS]
    [Return]    ${RANUSER}