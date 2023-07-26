*** Settings ***
Library          SeleniumLibrary

*** Variables ***
${URL}          https://automationplayground.com/crm/
${BROWSER}      chrome

*** Keywords ***

Open the browser
    log                     Starting the test case!
    open browser            ${URL}      ${BROWSER}
    set selenium speed      .2s
    set selenium timeout    10s

Close the browser
    sleep                   3s
    close all browsers


#Run the script
#robot -d results .\tests\Crm.robot
#robot -d results -v NAVEGADOR:edge .\Tests\Crm.robot (variavel via terminal)

#Resize browser
    #set window position     x=341   y=169
    #set window size         width=1935  height=1890