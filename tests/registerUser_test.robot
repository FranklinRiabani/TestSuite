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