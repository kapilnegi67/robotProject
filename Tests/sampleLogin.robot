*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
LoginTest
    [Documentation]     First robot selenium test case
    [Tags]  Functional


    Open Browser    https://the-internet.herokuapp.com/login    Chrome
    Maximize Browser Window
    Page Should Contain    Login Page
    Input Text    name:username    sample_user
    Input Password    name:password    sample_password
    Sleep    5
    Close Browser