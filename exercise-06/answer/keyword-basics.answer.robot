*** Settings ***
Library  OperatingSystem
Library  SeleniumLibrary

*** Test Cases ***
Check invoice manager page
    Comment    We've learned how to create a custom keyword!
    Set Environment Variable    PATH  %{PATH}:${EXECDIR}/../drivers
    Navigate To Home Page
    Page Should Contain     Invoice Manager

*** Keywords ***
Navigate To Home Page
    # Requires Chromedriver in Path (See earlier Excercise)
    Open Browser    http://34.225.240.91		chrome
