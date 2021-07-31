*** Settings ***
Library     SeleniumLibrary

*** Variables ***
@{url}  local_url qa_url prod_url
${browser}  Chrome
${username}     sample_user
${password}     sample_password
${sleep_time}   5
&{my_dictionary}    A=1 B=2 C=3



*** Test Cases ***
LoginTest
    [Documentation]     First robot selenium test case
    [Tags]  Functional


    Open Browser    @{url}[2]    ${browser}
    Maximize Browser Window
    Page Should Contain    Login Page
    Input Text    name:username    ${username}
    Input Password    name:password    ${password}
    Sleep    &{my_dictionary.C}
    Close Browser
