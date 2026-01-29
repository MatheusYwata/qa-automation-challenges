*** Settings ***
Library    AppiumLibrary

*** Variables ***

# ---------- LOGIN ----------
${BTN_MENU}                 accessibility_id=open menu
${BTN_LOGIN_MENU}           xpath=//android.widget.TextView[@text="Log In"]

${FIELD_USER}               accessibility_id=Username input field
${FIELD_PASS}               accessibility_id=Password input field
${BTN_LOGIN}                accessibility_id=Login button

${MSG_LOGIN_ERRO}           xpath=//android.widget.TextView[contains(@text,"do not match")]
${MSG_REQUIRED}             xpath=//android.widget.TextView[contains(@text,"required")]

# ---------- PRODUCTS ----------
${TXT_PRODUCTS}             xpath=//android.widget.TextView[@text="Products"]
${FIRST_PRODUCT}            xpath=(//android.view.ViewGroup[@content-desc="store item"])[1]

# ---------- CARRINHO ----------
${BTN_ADD_CART}             accessibility_id=Add To Cart button
${BTN_CART}                 accessibility_id=cart badge
${TXT_NO_ITEMS}              xpath=//android.widget.TextView[@text="No Items"]

# ---------- MENU / ABOUT ----------
${BTN_ABOUT}                xpath=//android.widget.TextView[@text="About"]
${TXT_ABOUT}                xpath=//android.widget.TextView[@text="About"]


*** Keywords ***
Abrir Tela Login
    Wait Until Element Is Visible    ${BTN_MENU}    10s
    Click Element    ${BTN_MENU}

    Wait Until Element Is Visible    ${BTN_LOGIN_MENU}    10s
    Click Element    ${BTN_LOGIN_MENU}

Preencher Login
    [Arguments]    ${user}    ${pass}

    Wait Until Element Is Visible    ${FIELD_USER}    10s
    Input Text    ${FIELD_USER}    ${user}

    Wait Until Element Is Visible    ${FIELD_PASS}    10s
    Input Text    ${FIELD_PASS}    ${pass}

Clicar Login
    Wait Until Element Is Visible    ${BTN_LOGIN}    10s
    Click Element    ${BTN_LOGIN}

