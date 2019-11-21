*** Keywords ***
Enter Invoice Number
    [Arguments]    ${invoice_id}
    Input Text  css:[ng-model="invoice.invoiceNo"]    ${invoice_id}

Enter Company Name
    [Arguments]    ${company_name}
    Input Text  css:[ng-model="invoice.companyName"]    ${company_name}

Enter Type of Work
    [Arguments]    ${type_of_work}
    Input Text  css:[ng-model="invoice.typeOfWork"]    ${type_of_work}

Enter Amount
    [Arguments]    ${amount}
    Input Text  css:[ng-model="invoice.price"]    ${amount}

Select Status
    [Arguments]     ${status}
    Select From List By Value   css:[ng-model="invoice.status"]   ${status}

Enter Due Date
    [Arguments]     ${due_date}
    Input Text   css:[ng-model="invoice.dueDate"]   ${due_date}

Enter Description
    [Arguments]     ${description}
    Input Text   css:[ng-model="invoice.comment"]   ${description}
    
Submit Invoice Form
    Click Button    createButton

Fill Out Invoice Details
    [Arguments]    ${invoice}
    Enter Invoice Number    ${invoice["id"]}
    Enter Company Name  ${invoice["company_name"]}
    Enter Type of Work  ${invoice["type_of_work"]}
    Select Status  ${invoice["status"]}
    Enter Amount  ${invoice["amount"]}
    Enter Due Date  ${invoice["due_date"]}
    Enter Description   ${invoice["description"]}



