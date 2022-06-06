*** Settings ***
Documentation
Library         SeleniumLibrary


*** Variables ***
${palabraABuscar}   casos de prueba
${Navegador}    chrome
${URL}  https:/www.google.com

*** Keywords ***
Abrir navegador y esperar Logs
    Open Browser                          ${URL}    ${Navegador}
    Wait Until Element Is Visible       xpath=/html/body/div[1]/div[2]/div