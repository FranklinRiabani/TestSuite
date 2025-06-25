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

Ingresar Credenciales Bloqueadas
    [Documentation]    Enters invalid credentials into the login form.
    Wait Until Page Contains Element   name=username
    Input Text    id=username    ${USERNAME_Blocked}
    Sleep    ${WAIT}
    Input Text    id=password    ${PASSWORD_Blocked}
    Sleep    ${WAIT}
    Click Button    name=login
    Sleep    ${WAIT}

Ir a recuperar contraseña
    [Documentation]    Navigates to the password recovery page.
    Click Link    xpath=//*[@id="forgot-password"]
    Sleep   ${WAIT}

Recuperar contraseña
    [Documentation]    Recovers the password by entering the email.
    Wait Until Page Contains Element   name=email
    Input Text    id=email    ${EMAIL}
    Sleep    ${WAIT}
    Click Button    name=submit
    Sleep    ${WAIT}