*** Settings ***
Library    AppiumLibrary

*** Variables ***
${REMOTE_URL}    http://127.0.0.1:4723
${APP_PATH}      ${CURDIR}/../app/Android-MyDemoAppRN.apk

*** Keywords ***

Abrir App
    Open Application
    ...    ${REMOTE_URL}
    ...    platformName=Android
    ...    automationName=UiAutomator2
    ...    deviceName=Android
    ...    app=${APP_PATH}
    ...    noReset=false

Fechar App
    Close Application

Resetar App
    Close Application
    Open Application
    ...    ${REMOTE_URL}
    ...    platformName=Android
    ...    automationName=UiAutomator2
    ...    deviceName=Android
    ...    app=${APP_PATH}
    ...    noReset=false

