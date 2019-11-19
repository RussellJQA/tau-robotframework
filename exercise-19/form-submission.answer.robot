*** Settings ***
Library  SeleniumLibrary
Resource  resources.robot
Suite Setup  Navigate To Home Page
Suite Teardown  Close Browser


*** Test Cases ***
Create an Invoice
    Click Add Invoice
    Input Text  invoice   my example invoice
    Input Text  company   my example company
    Input Text  type   plumbing
    Input Text  price   34.00
    Input Text  dueDate   2018-10-31
    Input Text  comment   Unclogged Drain
    Select From List By Value   selectStatus    Past Due
    Click Button    createButton

*** Keywords ***
Navigate To Home Page
    # Requires Chromedriver in Path (See earlier Excercise)
    Open Browser    ${SiteUrl}		${Browser}
    Set Selenium Speed    1.5 Seconds


Click Add Invoice
    Click Link  Add Invoice
    Page Should Contain Element     invoiceNo_add
