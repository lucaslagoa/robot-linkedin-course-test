*** Settings ***
Library          SeleniumLibrary

*** Variables ***
${EMAIL_CUSTOMER}        janedoe@teste.com
${FIRST_NAME}   Jane
${LAST_NAME}    Doe
${CITY}         Sorocaba

*** Keywords ***

Add Customer Informations
    click element               id=new-customer
    wait until page contains    Add Customer
    input text                  id=EmailAddress    ${EMAIL_CUSTOMER}
    input text                  id=FirstName       ${FIRST_NAME}
    input text                  id=LastName        ${LAST_NAME}
    input text                  id=City            ${CITY}
    select from list by value   id=StateOrRegion       TX
    select radio button         gender      male
    select checkbox             name=promos-name
    click button                Submit
    wait until page contains    Success! New customer added.