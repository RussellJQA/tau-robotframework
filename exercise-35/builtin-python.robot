*** Settings ***
Library math
*** Test Cases ***

My Test
    ${floor}=  math.floor  2.2
    Should be equal  2  ${floor}