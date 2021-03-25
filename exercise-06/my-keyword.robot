*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem
# Library  RequestsLibrary
Library  String
Library  Collections

Suite Setup  Run Keywords   
Suite Teardown  Run Keywords    Close Browser  

*** Test Cases ***
Create an Invoice
    my keyword

*** Keywords ***
my keyword
    Comment  This is a keyword I created