*** Settings ***
Resource    ../resources/Base.resource
Resource    ../resources/Auth.resource
Resource    ../resources/Users.resource

Suite Setup    Setup Suite API

*** Test Cases ***
Criar usuario com sucesso
    ${email}=    Set Variable    usuario_${random}@qa.com

    ${response}=    Criar Usuario
    ...    Usuario QA
    ...    ${email}
    ...    123456
    ...    true

    Should Be Equal As Integers    ${response.status_code}    201

    ${user_id}=    Get From Dictionary    ${response.json()}    _id
    Set Suite Variable    ${USER_ID}    ${user_id}
