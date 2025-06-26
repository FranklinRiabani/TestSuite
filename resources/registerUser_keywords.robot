***Settings***
Documentation    user Register keywords for the application
Library    SeleniumLibrary
Resource    ../variables/variables.robot


***Variables***

***Keywords***

Abrir Navegador
    [Documentation]    Opens the browser and navigates to the registration page.
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

Ir a registar usuario
    [Documentation]    Navigates to the user registration page.
    Click Link    xpath=/html/body/a[1]
    Sleep   ${WAIT}

Ingresar datos de registro
    [Documentation]    Enters the registration data into the form.
    Wait Until Page Contains Element   name=username
    Input Text    id=nombres    ${NOMBRES}
    Sleep    ${WAIT}
    Input Text    id=apellidos    ${APELLIDOS}
    Sleep    ${WAIT}
    Input Text    id=username    ${NEW_USERNAME}
    Sleep    ${WAIT}
    Input Text    id=email    ${NEW_EMAIL}
    Sleep    ${WAIT}
    Input Text    id=password    ${NEW_PASSWORD}
    Sleep    ${WAIT}
    Click Button    name=registrar
    Sleep    ${WAIT}

Ir a Lista Usuarios
    [Documentation]    Navigates to the user list page.
    Click Link    xpath=/html/body/a[2]
    Sleep   ${WAIT}

