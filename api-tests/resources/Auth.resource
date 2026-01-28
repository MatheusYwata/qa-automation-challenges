*** Settings ***
Resource    Base.resource

*** Keywords ***
Autenticar Usuario
    ${payload}=    Create Dictionary
    ...    email=teste@teste.com
    ...    password=123456

    ${response}=    POST On Session
    ...    serverest
    ...    /login
    ...    json=${payload}

    Should Be Equal As Integers    ${response.status_code}    200

    ${token}=    Get From Dictionary    ${response.json()}    authorization
    Set Suite Variable    ${TOKEN}    ${token}
