*** Settings ***
Library  ./calculator.py


*** Test Cases ***
Addition Should Work
    ${result}=  Add 1 to 4
    Should Be Equal As Numbers  ${Result}   5