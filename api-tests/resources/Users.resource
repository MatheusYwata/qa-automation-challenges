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

Atualizar Usuario
    [Arguments]    ${user_id}    ${nome}    ${email}    ${password}    ${admin}

    ${headers}=    Create Dictionary
    ...    Authorization=${TOKEN}

    ${body}=    Create Dictionary
    ...    nome=${nome}
    ...    email=${email}
    ...    password=${password}
    ...    administrador=${admin}

    ${response}=    PUT On Session
    ...    serverest
    ...    /users/${user_id}
    ...    json=${body}
    ...    headers=${headers}

    RETURN    ${response}

Excluir Usuario
    [Arguments]    ${user_id}

    ${headers}=    Create Dictionary
    ...    Authorization=${TOKEN}

    ${response}=    DELETE On Session
    ...    serverest
    ...    /users/${user_id}
    ...    headers=${headers}

    RETURN    ${response}

