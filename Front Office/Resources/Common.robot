*** Settings ***
Library          SeleniumLibrary

*** Variables ***
${URL}          https://automationplayground.com/front-office/
${BROWSER}      chrome

*** Keywords ***

Open the browser
    open browser            ${URL}      ${BROWSER}
    maximize browser window
    set selenium speed      .2s
    set selenium timeout    10s

Close the browser
    sleep                   3s
    close all browsers