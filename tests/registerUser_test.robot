*** Settings ***
Documentation    Tests para registrar un nuevo usuario
Library    SeleniumLibrary
Resource    ../resources/registerUser_keywords.robot

*** Variables ***

*** Test Cases ***
Registrar nuevo usuario
    [Documentation]    Verifica que un nuevo usuario puede registrarse correctamente.
    Abrir Navegador
    Ir a pagina de inicio de sesión
    Ingresar credenciales
    Page Should Contain Element    xpath=//h1[contains(text(), 'Bienvenido')]
    Ir a registar usuario
    Ingresar datos de registro
    Page Should Contain Element    xpath=//h1[contains(text(), 'Lista Usuarios')]
    Page Should Contain Element    xpath=//td[contains(text(), '${NEW_EMAIL}')]
    Cerrar Navegador

Eliminar usuario
    [Documentation]    Verifica que un usuario puede ser eliminado correctamente.
    Abrir Navegador
    Ir a pagina de inicio de sesión
    Ingresar credenciales
    Page Should Contain Element    xpath=//h1[contains(text(), 'Bienvenido')]
    Ir a Lista Usuarios
    Page Should Contain Element    xpath=//td[contains(text(), '${NEW_EMAIL}')]
    
    #Click Link    xpath=//td[contains(text(), '${NEW_EMAIL}')]/following-sibling::td/a[contains(text(),'Eliminar')]
    Click Button    xpath=//td[contains(text(), '${NEW_EMAIL}')]/following-sibling::td/button[contains(text(),'Eliminar')]
    Sleep    ${WAIT}
    # Confirmar Alerta
    Handle Alert    accept
    Sleep    ${WAIT}
    Alert Should Be Present    Usuario con ID: 1 eliminado.    LEAVE
    Handle Alert    accept
    #Page Should Not Contain Element    xpath=//td[contains(text(), '${NEW_EMAIL}')]
    Cerrar Navegador