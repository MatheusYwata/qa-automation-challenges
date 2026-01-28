*** Settings ***
Library    RequestsLibrary
Library    Collections
Resource   Auth.resource

*** Variables ***
${BASE_URL}    https://serverest.dev

*** Keywords ***
Criar Sessao API
    Create Session    serverest    ${BASE_URL}

Setup Suite API
    Criar Sessao API
    Autenticar Usuario