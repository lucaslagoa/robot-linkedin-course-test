*** Settings ***
Library          SeleniumLibrary

*** Variables ***


*** Keywords ***

Access Team Page
    click link                  Team
    wait until page contains    Our Amazing Team

Check Requirements from Team Page
    click link                  Team
    wait until page contains    Our Amazing Team
    wait until page contains    Kay Garland
    wait until page contains    Lead Designer
    wait until page contains    Larry Parker
    wait until page contains    Lead Marketer
    wait until page contains    Diana Pertersen
    wait until page contains    Lead Developer