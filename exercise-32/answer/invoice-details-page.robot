*** Keywords ***
Invoice Details Are Set To
    [Arguments]  ${Name}    ${Company}  ${Type}     ${Cost}     ${Date}     ${Comments}     ${Status}
    Input Text  css:#invoiceNo_add > input   ${Name}
    Input Text  css:#compName_add > input   ${Company}
    Input Text  css:#typeofwork_add > input   ${Type}
    Input Text  css:#cost_add > input   ${Cost}
    Input Text  css:#invoice_dueDate > input   ${Date}
    Input Text  css:#comments_add > input   ${Comments}
    Select From List By Value   css:#status_add > select    ${Status}
    Click Button    id:createButton
