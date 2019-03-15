*** Settings ***
Library  OperatingSystem
Library     DateTime

*** Test Cases ***
Is Saturday
    ${date}=    Get Current Date    result_format=datetime
    Run Keyword If  ${date.isoweekday()} == 6   Log To Console  "Yes!"
          ...     Pass Execution    passed    tags
      ...   ELSE
          ...     Fail    it failed

Is Sunday
    ${date}=    Get Current Date    result_format=datetime
    Run Keyword If  ${date.isoweekday()} == 7   Log To Console  "Yes!"
          ...     Pass Execution    passed    tags
      ...   ELSE
          ...     Fail    it failed

Is Weekend
    ${date}=    Get Current Date    result_format=datetime
    Run Keyword If  ${date.isoweekday()} == 6
          ...     Log To Console  "Yes!"
          ...     Fail    it failed
      ...   ELSE IF  ${date.isoweekday()} == 7
          ...     Log To Console  "Yes!"
          ...     Fail    it failed
      ...   ELSE
          ...     Pass Execution    it passed
