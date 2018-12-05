*** Settings ***


*** Test Cases ***
Test Calculator
    My Calculator Adds  1   5   6
    My Calculator Adds  -100   10   -90
    My Calculator Adds  12345   -10000   2345
    My Calculator Adds  12356123123   123   12356123246
    # we could choose to move the exception into the test
    Run Keyword And Expect Error    *   My Calculator Adds  "1"   "3"     4
    Run Keyword And Expect Error    *   My Calculator Adds  "test"   3    4
*** Keywords ***



My Calculator Adds
    [Arguments]     ${a}    ${b}    ${c}
    ${answer}=  Evaluate    ${a}+${b}
    Should Be Equal As Numbers  ${answer}   ${c}