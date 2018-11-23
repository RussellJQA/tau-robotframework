*** Settings ***
#Library  #?
#Library  #?

*** Test Cases ***
Example Test Case
    Comment    This is my first RobotFramework test case!
    Set Environment Variable    PATH  %{PATH}:${EXECDIR}/../drivers
    Open Browser  http://34.225.240.91/   chrome
