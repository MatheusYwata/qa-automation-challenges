*** Settings ***
Resource    Base.resource

*** Keywords ***
Criar Usuario
    [Arguments]    ${nome}    ${email}    ${password}    ${admin}

    ${body}=    Create Dictionary
    ...    nome=${nome}
    ...    email=${email}
    ...    password=${password}
    ...    administrador=${admin}

    ${response}=    POST On Session
    ...    serverest
    ...    /usuarios
    ...    json=${body}
    ...    expected_status=anything

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
    ...    /usuarios/${user_id}
    ...    json=${body}
    ...    headers=${headers}
    ...    expected_status=anything

    RETURN    ${response}

Excluir Usuario
    [Arguments]    ${user_id}

    ${headers}=    Create Dictionary
    ...    Authorization=${TOKEN}

    ${response}=    DELETE On Session
    ...    serverest
    ...    /usuarios/${user_id}
    ...    headers=${headers}

    RETURN    ${response}

Buscar Usuario Por Id
    [Arguments]    ${user_id}    ${expected_status}=200

    ${headers}=    Create Dictionary
    ...    Authorization=${TOKEN}

    ${response}=    GET On Session
    ...    serverest
    ...    /usuarios/${user_id}
    ...    headers=${headers}
    ...    expected_status=${expected_status}

    RETURN    ${response}
