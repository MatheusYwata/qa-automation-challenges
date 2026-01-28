*** Settings ***
Library    RequestsLibrary
Library    Collections

*** Variables ***
${BASE_URL}    https://serverest.dev

*** Keywords ***
Criar Sessao API
    Create Session    serverest    ${BASE_URL}
