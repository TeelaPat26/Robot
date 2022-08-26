*** Settings ***
Library  Selenium2Library    
*** Variables ***
${number}  10
*** Keywords ***

Fail
    Log To Console    Test Fail
Sucesss
    Log To Console    Test Success

*** Test Cases ***
TC1
    Run Keyword If  ${number} > 10    Sucesss  
    ...    ELSE  Fail           