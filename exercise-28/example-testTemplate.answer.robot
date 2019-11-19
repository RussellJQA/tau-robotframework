*** Settings ***
Test Template  Validate Addition

*** Variables ***


*** Test Cases ***

# My Addition Test
#   ${sum}=  Add  2  3
#   Should be equal as integers  5  ${sum}

# My Addition Test 9 plus 5
#     Validate Addition  9  5  14

My addition suite
  1  2  3
  3  4  7
  5  6  11
  -1  3  2
  -2  -2  -4

*** Keywords ***
Validate Addition
  [Arguments]  ${value1}  ${value2}  ${expected}
  ${sum}=  Add  ${value1}  ${value2}
  Should be equal as integers  ${expected}  ${sum}


Add
  [Arguments]  ${value1}  ${value2}
  ${value}=  Evaluate  ${value1} + ${value2}
  [Return]  ${value}
 
