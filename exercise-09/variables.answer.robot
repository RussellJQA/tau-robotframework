*** Settings ***
Library  SeleniumLibrary
Suite Setup  Navigate To Home Page
Suite Teardown  Close Browser


*** Test Cases ***
Using Variables
    Comment    This test uses variables!


*** Keywords ***
Navigate To Home Page
    # Using variables inline in the test case.
    ${Browser} =    Set Variable    Chrome
    ${SiteUrl} =    Set Variable    http://34.225.240.91
    Open Browser    ${SiteUrl}		${Browser}

# Optionally we could use a variable section
# *** Variables ***
# ${SiteUrl}    http://34.225.240.91
# ${Browser}     Chrome
