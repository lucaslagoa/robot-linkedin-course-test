*** Settings ***
Documentation    This is some basic info about the whole suite

Resource    ../Resources/Common.robot
Resource    ../Resources/Customer.robot
Resource    ../Resources/Login.robot

Test Setup      Open the browser
Test Teardown   Close the browser

*** Test Cases ***

Should be able to login
    [Documentation]         Testing login
    [Tags]                  001     Login

    Login.Type Login Informations

Should be able to logout
    [Documentation]         Testing logout
    [Tags]                  002     Logout

    Login.Type Login Informations
    Login.Logout

Should be able to login, add new customer and logout
    [Documentation]         Testing login, add new customer and logout!
    [Tags]                  003     Customer

    Login.Type Login Informations
    Customer.Add Customer Informations
    Login.Logout