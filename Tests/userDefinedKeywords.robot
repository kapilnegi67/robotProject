*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
LoginTest
    [Documentation]     First robot selenium test case
    [Tags]  Functional

    Setup Testcase
    Perform Login
    Teardown Testcase

*** Keywords ***
Setup Testcase
    Open Browser    https://the-internet.herokuapp.com/login    Chrome
    Maximize Browser Window
    Page Should Contain    Login Page

Perform Login
    Input Text    name:username    sample_user
    Input Password    name:password    sample_password
    Sleep    5

Teardown Testcase
    Close Browser

