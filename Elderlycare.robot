*** Settings ***
Library    Selenium2Library
*** Keywords ***
*** Test Cases ***
Login Elderly
    Open Browser    https://oauth.elderly-hd.co/testing/login    chrome
    Input Text    xpath: //input[@class="form-control m-0 ng-untouched ng-pristine ng-invalid"]    admin-testing
    Input Password    xpath: //input[@class="form-control ng-untouched ng-pristine ng-invalid"]    password
    Click Button    xpath: //button[@class="btn bg-custom btn-block"]