*** Settings ***
Documentation    Login keywords for the application
Library    SeleniumLibrary
Resource    ../variables/variables.robot

*** Variables ***

*** Keywords ***
Abrir Navegador
    [Documentation]    Opens the browser and navigates to the login page.
    Open Browser    ${URL}    ${BROWSER}
    Sleep    ${WAIT}
    Maximize Browser Window
    
Cerrar Navegador
    [Documentation]    Closes the browser.
    Close Browser

Ir a pagina de inicio de sesión
    [Documentation]    Navigates to the login page.
    Click Link    xpath=/html/body/a
    Sleep    ${WAIT}

Ingresar credenciales
    [Documentation]    Enters the username and password into the login form.
    Wait Until Page Contains Element   name=username
    Input Text    id=username    ${USERNAME}
    Sleep    ${WAIT}
    Input Text    id=password    ${PASSWORD}
    Sleep    ${WAIT}
    Click Button    name=login
    Sleep    ${WAIT}

Ingresar Credenciales Invalidas
    [Documentation]    Enters invalid credentials into the login form.
    Wait Until Page Contains Element   name=username
    Input Text    id=username    ${INVALID_USERNAME}
    Sleep    ${WAIT}
    Input Text    id=password    ${INVALID_PASSWORD}
    Sleep    ${WAIT}
    Click Button    name=login
    Sleep    ${WAIT}
