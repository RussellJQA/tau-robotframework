*** Settings ***
Library  OperatingSystem
Resource  Animals.robot




*** Test Cases ***
# Looping a bunch
#
#     :FOR    ${i}    IN RANGE    5   500   7
#     \    Log To Console   ${i}
#     Log To Console   Done with first test!



Example From Web
    :FOR    ${animal}    IN    @{Animals}
    \    Log To Console    ${animal}
    \    Log To Console    Inside the loop

    Log to Console    Outside loop

*** Keywords ***
