*** Settings ***
Library    AppiumLibrary
Resource   Locators.resource

*** Keywords ***

Abrir Primeiro Produto
    Wait Until Element Is Visible    ${FIRST_PRODUCT}
    Click Element    ${FIRST_PRODUCT}

Adicionar Ao Carrinho
    Wait Until Element Is Visible    ${BTN_ADD_CART}
    Click Element    ${BTN_ADD_CART}

Abrir Carrinho
    Wait Until Element Is Visible    ${BTN_CART}
    Click Element    ${BTN_CART}

Validar Tela Carrinho
    Wait Until Element Is Visible    ${TXT_NO_ITEMS}
