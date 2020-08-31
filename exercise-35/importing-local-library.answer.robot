*** Settings ***
Library  ./calculator.py


*** Test Cases ***
Addition Should Work
    ${result}=  add   1   4
    Should Be Equal As Numbers  ${Result}   5
