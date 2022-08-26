*** Settings ***
Library    Selenium2Library
*** Variables ***
${BROWSER}        chrome
${GOOGLE URL}    http://www.google.com
${FACEBOOK}    Facebook
${FACEBOOK_ID}    test@gmail.com   
${FACEBOOK_PW}    Mrsf12435
*** Keywords ***
Open Google
    Open Browser    ${GOOGLE URL}    ${BROWSER}
    Maximize Browser Window
Search Facebook
    Input Text    q    ${FACEBOOK}
    Set Browser Implicit Wait    0.5s
    Click Button    btnK    
    Wait Until Page Contains    ${FACEBOOK}
    Click Element    xpath://h3[@class="LC20lb MBeuO DKV0Md"]
Facebook Login
    Input Text    email    ${FACEBOOK_ID}
    Input Password    pass    ${FACEBOOK_PW}
    Click Button    name:login

*** Test Cases ***
Facebook Login
    Open Browser    ${GOOGLE URL}    chrome
    Input Text    q    ${FACEBOOK}
    Set Browser Implicit Wait    0.5s
    Click Button    btnK    
    Wait Until Page Contains   ${FACEBOOK}
    Click Element    xpath://h3[@class="LC20lb MBeuO DKV0Md"]
    Input Text    name:email    ${FACEBOOK_ID}
    Input Password    name:pass    ${FACEBOOK_PW}    
    Click Button    name:login 
    IF    ${True}
        Log    This line IS executed.
    END

    



