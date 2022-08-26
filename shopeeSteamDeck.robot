*** Settings ***
Library    Selenium2Library
*** Variables ***
${google}    https://google.com
${browser}    chrome
${shopee}    https://shopee.co.th
*** Keywords ***
Get to Shopee
    [Documentation]    This test go to Shopee Website
    [Tags]    Function
    Open Browser    ${google}    chrome
    Maximize Browser Window
    Input Text    xpath://input[@class="gLFyf gsfi"]    shopee
    Set Selenium Implicit Wait    0.5s
    Click Element    xpath: //input[@class="gNO89b"]    
    Wait Until Element Contains    xpath: //h3[@class="LC20lb MBeuO DKV0Md"]    Shopee Thailand 
    Click Element    xpath: //h3[@class="LC20lb MBeuO DKV0Md"]
Select Language
    [Documentation]    Language Selection
    Wait Until Page Contains Element    class:language-selection__title 
    Click Button    xpath://button[@class="shopee-button-outline shopee-button-outline--primary-reverse"]
Close Ad
    [Documentation]    This will exit ads in Shopee
    Click Element At Coordinates  xpath: //input[@class="shopee-searchbar-input__input"]  10    200  
Search Steam Deck
    [Documentation]    Search for steam deck in the marketplace
    Input Text    xpath: //input[@class="shopee-searchbar-input__input"]    Steam Deck
    Click Element   xpath: //button[@class="btn btn-solid-primary btn--s btn--inline shopee-searchbar__search-button"]
*** Test Cases ***
Shopee Search
    Get to Shopee
    Select Language
    Close Ad
    Search Steam Deck
