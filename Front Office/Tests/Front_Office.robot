*** Settings ***
Documentation       Front Office Example

Resource    ../Resources/Common.robot
Resource    ../Resources/FrontOfficeApp.robot

Test Setup      Open the browser
Test Teardown   Close the browser

*** Test Cases ***

Should be able to access Team page
    [Documentation]         Access team page
    [Tags]                  001
    FrontOfficeApp.Access Team Page

Team page should match requirements
    [Documentation]         Match Requirements from Team page
    [Tags]                  002
    FrontOfficeApp.Check Requirements from Team Page