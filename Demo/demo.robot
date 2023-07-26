*** Settings ***

*** Variables ***

${variavel}             Teste
@{lista_variavel}       Banana     Uva
@{GLOBAL}               teste global

*** Test Cases ***
Test Case 1

    Do Something
    Do Something Else

Test Case 2

    Do Another Thing
    Do Something Else
    Log         ${variavel}
    Log         ${lista_variavel}[0]
    Log         ${lista_variavel}[1]
    Log Many    @{lista_variavel}

*** Keywords ***
Do Something
    log     I am doing something...

Do Something Else
    log     I am doing something else...

Do Another Thing
    log     I am doing another thing
