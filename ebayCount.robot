*** Settings ***
Library    Selenium2Library
*** Variables ***
${browser}    chrome
${ebay}    https://www.ebay.com/
*** Keywords ***
Correct
    Log To Console    Correct!
Wrong
    Log To Console    Wrong!
Get to ebay
    Open Browser    ${ebay}    ${browser}
Search SteamDeck
    Input Text    id:gh-ac    steamdeck
    Click Element    xpath: //input[@class="btn btn-prim gh-spr"]  
*** Test Cases ***
ebay
    Get to ebay
    Search SteamDeck
    # number of items by counting element
    ${count}=    Get Element Count    xpath: //ul[@class="srp-results srp-list clearfix"]
    # Number of results found
    ${num}=    Get Text    xpath: //span[@class="BOLD"]
    Run Keyword If    ${count} - 6 == '${num}'    Correct    ELSE    Wrong
    
    
