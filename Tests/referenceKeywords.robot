*** Settings ***
Resource    ../Resources/commonUtilities.robot
Test Setup      Setup Testcase
Test Teardown   Teardown Testcase

*** Test Cases ***
LoginTest
    [Documentation]     First robot selenium test case
    [Tags]  Functional

    commonUtilities.Perform Login


