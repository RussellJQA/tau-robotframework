*** Keywords ***
Configure Selenium
     Set Selenium Speed    1.5 Seconds
     
Navigate To Homepage
    Open Browser    ${SiteUrl}    ${BROWSER}
    Maximize Browser Window
Exit Selenium
    Capture Page Screenshot
    Close Browser
Generate Random Number
    ${random_number}    Evaluate    random.randint(1000000, 9999999)   random
    [return]    ${random_number}
