*** Settings ***
Library  OperatingSystem
Library     DateTime

*** Test Cases ***
Is Saturday
    ${date}=    Get Current Date    result_format=datetime
    Run Keyword If  ${date.isoweekday()} == 6   Log To Console  "Yes!"
Is Sunday
    ${date}=    Get Current Date    result_format=datetime
    Run Keyword If  ${date.isoweekday()} == 7   Log To Console  "Yes!"
Is Weekend
    ${date}=    Get Current Date    result_format=datetime
    Run Keyword If  ${date.isoweekday()} == 6
        ...     Log To Console  "Yes!"
    ...   ELSE IF  ${date.isoweekday()} == 7
        ...     Log To Console  "Yes!"
    ...   ELSE
        ...     Log To Console    "(Darth Vader) Noooo!!!"


*** Keywords ***
