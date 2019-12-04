*** Keywords ***
Read Invoice Fixtures
    ${json_data}=     Get File    ${EXECDIR}/invoice-fixtures.json
    ${json}=    evaluate    json.loads('''${json_data}''')    json
    [return]  ${json}

Initialize Test Data
    ${json}=    Read Invoice Fixtures
    set global variable  ${Invoices}    ${json}

Get Dummy Invoice
    [Arguments]    ${invoice_name}
    ${invoice}=  Get From Dictionary     ${Invoices}     ${invoice_name}
    Randomize Invoice Id    ${invoice}
    [return]    ${invoice}
    
Randomize Invoice Id
    [Arguments]    ${invoice}
    ${random_number}=  Generate Random Number
    Update Invoice Id   ${invoice}    ${random_number}

Update Invoice Id
    [Arguments]    ${invoice}   ${id}
    set to dictionary  ${invoice}   id=${id}

Get Invoice Id
    [Arguments]    ${invoice}
    ${invoice_id}=   Convert To String   ${invoice["id"]}
    [return]  ${invoice_id}