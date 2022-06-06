*** Settings ***
Resource    recursos.robot

*** Test Cases ***
G001 Busqueda de la palabras en Google
    Abrir navegador y esperar Logs
    Input Text                          xpath=/html/body/div[1]/div[3]/form/div[1]/div[1]/div[1]/div/div[2]/input      ${palabraABuscar}
    Click Element                       xpath=/html/body/div[1]/div[2]/div
    Click Element                       xpath=/html/body/div[1]/div[3]/form/div[1]/div[1]/div[3]/center/input[1]
    Title Should Be                     ${palabraABuscar} - Buscar con Google
    Page Should Contain                 ${palabraABuscar}
    Close Browser

G002 Hacer click en el boton de Busqueda sin escribir palabras en Google
    Abrir navegador y esperar Logs
    Click Element                       xpath=/html/body/div[1]/div[3]/form/div[1]/div[1]/div[1]/div/div[2]/input
    Title Should Be                     Google
    Close Browser