*** Keywords ***
Add Invoice
    [Documentation]     This keywords fills out the invoice details page
    [Arguments]  ${Name}    ${Company}  ${Type}     ${Cost}     ${Date}     ${Comments}     ${Status}
    Input Text  invoice   ${Name}
    Input Text  company   ${Company}
    Input Text  type   ${Type}
    Input Text  price   ${Cost}
    Input Text  dueDate   ${Date}
    Input Text  comment   ${Comments}
    Select From List By Value   selectStatus    ${Status}
    Click Button    createButton
