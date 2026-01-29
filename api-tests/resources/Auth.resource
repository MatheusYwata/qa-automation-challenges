*** Settings ***
Library     String
Resource    Base.resource
Resource    Users.resource

*** Keywords ***
Autenticar Usuario
    ${rand}=     Generate Random String    8    [LETTERS]
    ${email}=    Set Variable    auth_${rand}@qa.com
    ${password}=    Set Variable    123456

    ${create_response}=    Criar Usuario
    ...    Usuario Auth
    ...    ${email}
    ...    ${password}
    ...    true

    Should Be Equal As Integers    ${create_response.status_code}    201

    ${payload}=    Create Dictionary
    ...    email=${email}
    ...    password=${password}

    ${login_response}=    POST On Session
    ...    serverest
    ...    /login
    ...    json=${payload}

    Should Be Equal As Integers    ${login_response.status_code}    200

    ${token}=    Get From Dictionary    ${login_response.json()}    authorization
    Set Suite Variable    ${TOKEN}    ${token}
