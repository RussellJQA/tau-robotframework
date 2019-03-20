*** Keywords ***
Setup Path
    Set Environment Variable    PATH  %{PATH}:${EXECDIR}/../drivers
Configure Selenium
    Set Selenium Implicit Wait    10 Seconds
    Set Selenium Speed     .25 seconds
Navigate To Homepage
    Open Browser    ${SiteUrl}    ${BROWSER}
    Maximize Browser Window
Exit Selenium
    Capture Page Screenshot
    Close Browser
Generate Random Number
    ${random_number}    Evaluate    random.randint(1000000, 9999999)   random
    [return]    ${random_number}
