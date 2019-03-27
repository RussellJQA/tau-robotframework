*** Settings ***
Library  ./calculator.py


*** Test Cases ***
Addition Should Work
    ${result}=  add   1   4
    Should Be Equal As Numbers  ${Result}   5


Subtraction Should Work
    ${result}=  subtract   5    2
    Should Be Equal As Numbers  ${Result}   3

Multiplication Should Work
    ${result}=  multiply   30.4    23.6
    Should Be Equal As Numbers  ${Result}   717.44