*** Keywords ***
Navigate To Add Invoice
    Click Element   css:[href="#/addInvoice"]

Open Invoice
    [Arguments]    ${id}
    Click Link    css:#invoiceNo_${id} > a