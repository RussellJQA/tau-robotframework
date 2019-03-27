*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem
Library  RequestsLibrary
Library  String
Library  Collections

Resource  ${EXEC_DIR}/resources.robot
Suite Setup  Run Keywords   Navigate To Home Page
Suite Teardown  Run Keywords    Delete Invoice  Close Browser


*** Test Cases ***
Create an Invoice
    Click Add Invoice
    ${invoiceNumber}=    Create Invoice Number
    Set Suite Variable   ${invoiceNumber}
    Input Text  invoice   ${invoiceNumber}
    Input Text  company   my example company
    Input Text  type   plumbing
    Input Text  price   34.00
    Input Text  dueDate   2018-10-31
    Input Text  comment   Unclogged Drain
    Select From List By Value   selectStatus    Past Due
    Click Button    createButton
    Create Session	invoice-manager     ${ApiUrl}
    ${resp}=  Get Request    invoice-manager    /invoices/${invoiceNumber}
    Should Be Equal As Strings	${resp.status_code}	200
    Dictionary Should Contain Value	${resp.json()}	${invoiceNumber}
    Log To Console    ${resp.json()}


*** Keywords ***
Navigate To Home Page
    # Requires Chromedriver in Path (See earlier Excercise)
    Set Environment Variable    PATH  %{PATH}:${EXECDIR}/../drivers
    Open Browser    ${SiteUrl}		${Browser}
    Set Selenium Implicit Wait    10 Seconds
    Set Selenium Speed     .25 seconds

Click Add Invoice
    Click Link    Add Invoice
    Page Should Contain Element     invoiceNo_add

Delete Invoice
    Delete Request    invoice-manager    /invoices/${invoiceNumber}

Create Invoice Number
    ${RANUSER}    Generate Random String    10    [LETTERS]
    [Return]    ${RANUSER}
