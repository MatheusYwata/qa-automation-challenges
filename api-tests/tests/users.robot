*** Settings ***
Library     String
Resource    ../resources/Base.resource
Resource    ../resources/Auth.resource
Resource    ../resources/Users.resource

Suite Setup    Setup Completo

*** Keywords ***
Setup Completo
    Setup Suite API
    Gerar Random

Gerar Random
    ${rand}=    Generate Random String    8    [LETTERS]
    Set Suite Variable    ${RAND}    ${rand}


*** Test Cases ***
Criar usuario com sucesso
    ${email}=    Set Variable    usuario_${RAND}@qa.com

    ${response}=    Criar Usuario
    ...    Usuario QA
    ...    ${email}
    ...    123456
    ...    true

    Should Be Equal As Integers    ${response.status_code}    201

    ${user_id}=    Get From Dictionary    ${response.json()}    _id
    Set Suite Variable    ${USER_ID}    ${user_id}

Atualizar usuario com sucesso
    ${email_atualizado}=    Set Variable    usuario_atualizado_${RAND}@qa.com

    ${response}=    Atualizar Usuario
    ...    ${USER_ID}
    ...    Usuario QA Atualizado
    ...    ${email_atualizado}
    ...    654321
    ...    true

    Should Be Equal As Integers    ${response.status_code}    200

Validar usuario atualizado
    ${response}=    Buscar Usuario Por Id    ${USER_ID}

    Should Be Equal As Integers    ${response.status_code}    200
    Should Be Equal    ${response.json()['nome']}    Usuario QA Atualizado

Excluir usuario com sucesso
    ${response}=    Excluir Usuario    ${USER_ID}

    Should Be Equal As Integers    ${response.status_code}    200

Validar usuario excluido
    ${response}=    Buscar Usuario Por Id    ${USER_ID}    400

    Should Be Equal As Integers    ${response.status_code}    400

Login com credenciais invalidas
    ${payload}=    Create Dictionary
    ...    email=invalido@qa.com
    ...    password=senha_errada

    ${response}=    POST On Session
    ...    serverest
    ...    /login
    ...    json=${payload}
    ...    expected_status=401

    Should Be Equal As Integers    ${response.status_code}    401

Criar usuario com email duplicado
    ${email}=    Set Variable    duplicado_${RAND}@qa.com

    ${response1}=    Criar Usuario
    ...    Usuario Original
    ...    ${email}
    ...    123456
    ...    true

    Should Be Equal As Integers    ${response1.status_code}    201

    ${response2}=    Criar Usuario
    ...    Usuario Duplicado
    ...    ${email}
    ...    123456
    ...    true

    Should Be Equal As Integers    ${response2.status_code}    400


Buscar usuario inexistente
    ${response}=    Buscar Usuario Por Id    id_inexistente_123    400

    Should Be Equal As Integers    ${response.status_code}    400

Atualizar usuario sem token
    Set Suite Variable    ${TOKEN}    token_invalido

    ${response}=    Atualizar Usuario
    ...    ${USER_ID}
    ...    Usuario Sem Token
    ...    sem_token@qa.com
    ...    123456
    ...    true

    Should Be Equal As Integers    ${response.status_code}    400
