*** Settings ***
Library  SeleniumLibrary
Library  OperatingSystem

*** Test Cases ***
Create an Invoice
    Comment    This is my first RobotFramework test case!
    Open Browser  http://34.225.240.91/   chrome
    Close Browser
