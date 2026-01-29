*** Settings ***
Library    AppiumLibrary
Resource   Locators.resource

*** Keywords ***

Abrir Tela Login
    Wait Until Element Is Visible    ${BTN_MENU}
    Click Element    ${BTN_MENU}

    Wait Until Element Is Visible    ${BTN_LOGIN_MENU}
    Click Element    ${BTN_LOGIN_MENU}

Preencher Login
    [Arguments]    ${user}    ${pass}

    Wait Until Element Is Visible    ${FIELD_USER}
    Input Text    ${FIELD_USER}    ${user}

    Wait Until Element Is Visible    ${FIELD_PASS}
    Input Text    ${FIELD_PASS}    ${pass}

Clicar Login
    Wait Until Element Is Visible    ${BTN_LOGIN}
    Click Element    ${BTN_LOGIN}

Login Com Credenciais
    [Arguments]    ${user}    ${pass}
    Abrir Tela Login
    Preencher Login    ${user}    ${pass}
    Clicar Login

Validar Login Sucesso
    Wait Until Element Is Visible    ${TXT_PRODUCTS}

Validar Mensagem Login Inválido
    Wait Until Element Is Visible    ${MSG_LOGIN_ERRO}

Validar Campos Obrigatórios
    Wait Until Element Is Visible    ${MSG_REQUIRED}
