*** Settings ***
Library  ./leap_year.py


*** Test Cases ***
2016 should be a leap year
    ${result}=  is_leap_year   2016
    Should Be True  ${result}

2015 should not be a leap year
    ${result}=  is_leap_year   2015
    Should Not Be True  ${result}

