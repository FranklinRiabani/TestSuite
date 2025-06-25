*** Settings ***
Documentation    Tests para login
Library    SeleniumLibrary
Resource    ../resources/login_keywords.robot

*** Variables ***

*** Test Cases ***
Login con credenciales válidas
    [Documentation]    Verifica que el usuario puede iniciar sesión con credenciales válidas.
    Abrir Navegador
    Ir a pagina de inicio de sesión
    Ingresar credenciales
    Page Should Contain Element    xpath=//h1[contains(text(), 'Bienvenido')]
    Cerrar Navegador

Login con credenciales inválidas
    [Documentation]    Verifica que el usuario no puede iniciar sesión con credenciales inválidas    
    Abrir Navegador
    Ir a pagina de inicio de sesión
    Ingresar Credenciales Invalidas
    Page Should Contain Element    xpath=//*[@id="error"]
    Cerrar Navegador

Login con credenciales bloqueadas
    [Documentation]    Verifica que el usuario no puede iniciar sesión con credenciales bloqueadas.
    Abrir Navegador
    Ir a pagina de inicio de sesión
    Ingresar Credenciales Bloqueadas
    Page Should Contain Element    xpath=//*[@id="error"]
    Cerrar Navegador

Recuperar contraseña
    [Documentation]    Verifica que el usuario puede recuperar su contraseña.
    Abrir Navegador
    Ir a pagina de inicio de sesión
    Ir a recuperar contraseña
    Recuperar contraseña
    Page Should Contain Element    xpath=//*[@id="confirmation"]
    Cerrar Navegador