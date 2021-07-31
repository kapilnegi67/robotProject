*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}  https://the-internet.herokuapp.com/login
${browser}  Chrome
${username}     sample_user
${password}     sample_password
${sleep_time}   5


*** Test Cases ***
LoginTest
    [Documentation]     First robot selenium test case
    [Tags]  Functional


    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Page Should Contain    Login Page
    Input Text    name:username    ${username}
    Input Password    name:password    ${password}
    Sleep    ${sleep_time}
    Close Browser