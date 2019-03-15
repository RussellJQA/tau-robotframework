*** Settings ***
Library  OperatingSystem
Library  SeleniumLibrary

*** Test Cases ***
Check invoice manager page
    Comment    We're learning how to create a custom keyword.
    Set Environment Variable    PATH  %{PATH}:${EXECDIR}/../drivers
    Open Browser  http://34.225.240.91/   chrome
    Page Should Contain     Invoice Manager
    My Logger


*** Keywords ***
My Logger
    Log To Console    Hello world!
