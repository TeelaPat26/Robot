*** Settings ***
Documentation    This is basic search.
Library    Selenium2Library

*** Variables ***
${BROWSER}    chrome
${GOOGLE}    https://google.com

*** Keywords ***
Open Google
    Open Browser    ${GOOGLE}    ${BROWSER}
Search
    Input Text    q    Robot Frame
    Set Browser Implicit Wait    0.5s
    Click Button    btnK 
Go Robot Framework
    Wait Until Page Contains    Robot Framework
    Click Element    xpath: //h3[@class="LC20lb MBeuO DKV0Md"]    
*** Test Cases ***
Open Browser and Search
    Open Google
    Search
    Go Robot Framework
