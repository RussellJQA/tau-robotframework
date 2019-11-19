*** Settings ***
Library  SeleniumLibrary
Resource  resources.robot
Suite Setup  Navigate To Home Page
Suite Teardown  Close Browser


*** Test Cases ***
Create an Invoice
    Comment    Variables have been moved to resources.robot and that file has been pulled in with the "Resource" keyword.


*** Keywords ***
Navigate To Home Page
    # Requires Chromedriver in Path (See earlier Excercise)
    Open Browser    ${SiteUrl}		${Browser}
