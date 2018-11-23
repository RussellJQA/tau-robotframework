*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Example Test Case
    Open Browser
    Navigate To Add Invoice Page
    Enter Invoice Number    "Invoice Id"
    Enter Company Name  "Mario's Plumbing"
    Enter Type of Work  ""
    Select Status  "Paid"
    Enter Amount  $50.00
    Enter Due Date  $TODO
    Enter Description   Fixed Toilet Upstairs
    Submit Invoice Form
    Page Should Contain     Fixed Toilet Upstairs
