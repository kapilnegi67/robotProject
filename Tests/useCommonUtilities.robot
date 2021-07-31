*** Settings ***
Resource    ../Resources/commonUtilities.robot

*** Test Cases ***
LoginTest
    [Documentation]     First robot selenium test case
    [Tags]  Functional

    Setup Testcase
    Perform Login
    Teardown Testcase
