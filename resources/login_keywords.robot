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
