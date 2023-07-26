*** Settings ***
Library          SeleniumLibrary

*** Variables ***
${ELEMENT_TEAM} =           css=#bs-example-navbar-collapse-1 > ul > li:nth-child(5) > a
${ELEMENT_AMAZING_TEAM} =   css=#team > div > div:nth-child(1) > div > h2

*** Keywords ***

Access Team Page
    click element                       ${ELEMENT_TEAM}
    wait until page contains element    ${ELEMENT_AMAZING_TEAM}

Check Requirements from Team Page
    click link                          Team
    wait until page contains            Our Amazing Team
    wait until page contains            Kay Garland
    wait until page contains            Lead Designer
    wait until page contains            Larry Parker
    wait until page contains            Lead Marketer
    wait until page contains            Diana Pertersen
    wait until page contains            Lead Developer