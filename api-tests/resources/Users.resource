*** Settings ***
Resource    Base.resource

*** Keywords ***
Criar Usuario
    [Arguments]    ${nome}    ${email}    ${password}    ${admin}

    ${headers}=    Create Dictionary
    ...    Authorization=${TOKEN}

    ${body}=    Create Dictionary
    ...    nome=${nome}
    ...    email=${email}
    ...    password=${password}
    ...    administrador=${admin}

    ${response}=    POST On Session
    ...    serverest
    ...    /users
    ...    json=${body}
    ...    headers=${headers}

    RETURN    ${response}
