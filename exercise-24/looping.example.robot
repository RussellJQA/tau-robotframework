*** Settings ***
Library  OperatingSystem

*** Test Cases ***
Looping a bunch
    :FOR    ${i}    IN RANGE    999999
    \    Exit For Loop If    ${i} == 500
    \    Log To Console   ${i}


*** Keywords ***
