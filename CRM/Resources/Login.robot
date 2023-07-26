*** Settings ***
Library          SeleniumLibrary

*** Variables ***
${EMAIL_LOGIN}      lucaslagoa@teste.com
${PASSWORD_LOGIN}   Theodoro123

*** Keywords ***

Type Login Informations
    wait until page contains    Customers Are Priority One
    click link                  Sign In
    wait until page contains    Login
    input text                  id=email-id     ${EMAIL_LOGIN}
    input password              id=password     ${PASSWORD_LOGIN}
    click button                id=submit-id
    wait until page contains    Our Happy Customers

Logout
    click link                  Sign Out
    wait until page contains    Signed Out