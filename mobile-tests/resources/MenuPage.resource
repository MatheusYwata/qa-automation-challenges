*** Settings ***
Library    AppiumLibrary
Resource   Locators.resource

*** Keywords ***

Abrir Menu
    Wait Until Element Is Visible    ${BTN_MENU}
    Click Element    ${BTN_MENU}

Acessar About
    Abrir Menu
    Wait Until Element Is Visible    ${BTN_ABOUT}
    Click Element    ${BTN_ABOUT}

Validar Tela About
    Wait Until Element Is Visible    ${TXT_ABOUT}

Voltar Para Products
    Go Back
    Wait Until Element Is Visible    ${TXT_PRODUCTS}
